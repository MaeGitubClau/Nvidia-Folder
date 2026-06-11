#!/usr/bin/env python3
from __future__ import annotations

import argparse
import re
from collections import defaultdict
from pathlib import Path


CLASS_SECTION_RE = re.compile(r"^[A-Za-z ]+ - [A-Za-z ]+$")

KEY_TO_SC = {
    "1": "2",
    "2": "3",
    "3": "4",
    "4": "5",
    "5": "6",
    "6": "7",
    "7": "8",
    "8": "9",
    "9": "A",
    "0": "B",
    "Q": "10",
    "W": "11",
    "E": "12",
    "R": "13",
    "T": "14",
    "Y": "15",
    "U": "16",
    "I": "17",
    "O": "18",
    "P": "19",
    "A": "1E",
    "S": "1F",
    "D": "20",
    "F": "21",
    "G": "22",
    "H": "23",
    "J": "24",
    "K": "25",
    "L": "26",
    "Z": "2C",
    "X": "2D",
    "C": "2E",
    "V": "2F",
    "B": "30",
    "N": "31",
    "M": "32",
    "F1": "3B",
    "F2": "3C",
    "F3": "3D",
    "F4": "3E",
    "F5": "3F",
    "F6": "40",
    "F7": "41",
    "F8": "42",
    "F9": "43",
    "F10": "44",
    "F11": "57",
    "F12": "58",
}

GGL_MODS = [
    ("ALT-SHIFT", "!+"),
    ("CTRL-SHIFT", "^+"),
    ("CTRL-ALT-SHIFT", "^!+"),
    ("ALT", "!"),
    ("CTRL", "^"),
    ("SHIFT", "+"),
    ("CTRL-ALT", "^!"),
    ("", ""),
]

PRIMARY_KEYS = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
PRIMARY_KEYS += list("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
FALLBACK_KEYS = [f"F{i}" for i in range(1, 13)]


def is_bindable_section(section: str) -> bool:
    return section == "General" or bool(CLASS_SECTION_RE.match(section))


def is_bindable_key(section: str, value: str) -> bool:
    if not is_bindable_section(section):
        return False

    after_semicolon = value.split(";", 1)[1].strip() if ";" in value else ""
    if after_semicolon.lower().startswith("make this key free"):
        return False
    return True


def make_pool(suffix: str) -> list[tuple[str, str]]:
    pool: list[tuple[str, str]] = []
    for wow_mod, ggl_mod in GGL_MODS:
        for key in PRIMARY_KEYS:
            bind = "-".join(part for part in [wow_mod, key] if part)
            ggl = f"{ggl_mod}{key}"
            pool.append((bind, ggl))

    for wow_mod, ggl_mod in GGL_MODS:
        for key in FALLBACK_KEYS:
            bind = "-".join(part for part in [wow_mod, key] if part)
            ggl = f"{ggl_mod}{key}"
            pool.append((bind, ggl))
    return pool


def find_suffix(lines: list[str]) -> str:
    for line in lines:
        match = re.search(r"sc[0-9A-Fa-f]+(_[-0-9]+)", line)
        if match:
            return match.group(1)
    return "_67699721"


def macro_text_for(key: str, value_after_semicolon: str) -> str:
    body = value_after_semicolon.split("§§§", 1)[0].replace("§", "\n").strip()
    if body.startswith("/"):
        return body
    return f"/cast {key}"


def parse_and_generate(lines: list[str], suffix: str):
    pools: dict[str, list[tuple[str, str]]] = defaultdict(lambda: make_pool(suffix))
    used: dict[str, int] = defaultdict(int)
    current_section = ""
    updated: list[str] = []
    bindpad_entries: list[dict[str, str]] = []
    counts: dict[str, int] = defaultdict(int)
    skipped: dict[str, int] = defaultdict(int)

    for raw in lines:
        stripped = raw.strip()
        if stripped.startswith("[") and stripped.endswith("]"):
            current_section = stripped[1:-1]
            updated.append(stripped)
            continue

        if "=" not in stripped:
            updated.append(stripped)
            continue

        key, value = stripped.split("=", 1)
        key = key.strip()
        value = value.strip()

        if not is_bindable_key(current_section, value):
            updated.append(stripped)
            continue

        pool = pools[current_section]
        index = used[current_section]
        if index >= len(pool):
            skipped[current_section] += 1
            updated.append(stripped)
            continue

        wow_bind, ggl_bind = pool[index]
        used[current_section] += 1

        after_semicolon = value.split(";", 1)[1] if ";" in value else ""
        updated.append(f"{key}={ggl_bind};{after_semicolon}")

        macro_name = key
        if current_section != "General":
            macro_name = f"{current_section} - {key}"

        bindpad_entries.append(
            {
                "section": current_section,
                "name": macro_name,
                "bind": wow_bind,
                "macro": macro_text_for(key, after_semicolon),
            }
        )
        counts[current_section] += 1

    return updated, bindpad_entries, counts, skipped


def build_bindpad_text(entries: list[dict[str, str]], section_filter: str | None = None) -> str:
    lines = ["#bindpad"]
    current_tab = ""
    for entry in entries:
        if section_filter and entry["section"] not in {"General", section_filter}:
            continue
        tab = "#general" if entry["section"] == "General" else "#character"
        if tab != current_tab:
            lines.append("")
            lines.append(tab)
            current_tab = tab
        lines.append("")
        lines.append(f"[{entry['name']}]")
        lines.append(f"@bind {entry['bind']}")
        lines.extend(entry["macro"].splitlines())
    return "\n".join(lines).rstrip() + "\n"


def lua_long_string(text: str) -> str:
    return "BindPadBulkImporterDataText = [==[\n" + text + "]==]\n"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("config")
    parser.add_argument("--out-dir", default="generated")
    parser.add_argument("--addon-dir", default="BindPadBulkImporter")
    parser.add_argument("--addon-section", default="Warrior - Arms")
    args = parser.parse_args()

    config_path = Path(args.config)
    out_dir = Path(args.out_dir)
    addon_dir = Path(args.addon_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    addon_dir.mkdir(parents=True, exist_ok=True)

    original = config_path.read_text(encoding="utf-16")
    source_lines = original.splitlines()
    suffix = find_suffix(source_lines)
    updated_lines, entries, counts, skipped = parse_and_generate(source_lines, suffix)

    edited_text = "\n".join(updated_lines) + "\n"
    (out_dir / "Config.remade.ini").write_text(edited_text, encoding="utf-16")
    (out_dir / "Config.remade.utf8.ini").write_text(edited_text, encoding="utf-8")

    all_text = build_bindpad_text(entries)
    (out_dir / "bindpad-import-all.txt").write_text(all_text, encoding="utf-8")

    addon_text = build_bindpad_text(entries, args.addon_section)
    (out_dir / "bindpad-import-warrior-arms.txt").write_text(addon_text, encoding="utf-8")
    (addon_dir / "ImportData.lua").write_text(
        "-- Generated from remade GGL config.\n" + lua_long_string(addon_text),
        encoding="utf-8",
    )

    summary_lines = ["# Generation Summary", "", f"GGL suffix: `{suffix}`", ""]
    summary_lines.append("| Section | Generated binds | Skipped overflow |")
    summary_lines.append("|---|---:|---:|")
    for section in sorted(counts):
        summary_lines.append(f"| {section} | {counts[section]} | {skipped.get(section, 0)} |")
    (out_dir / "SUMMARY.md").write_text("\n".join(summary_lines) + "\n", encoding="utf-8")

    print(f"generated {sum(counts.values())} config binds across {len(counts)} sections")
    print(f"addon section: {args.addon_section}")
    print(f"addon import entries: {addon_text.count('@bind ')}")
    if any(skipped.values()):
        print("warning: skipped overflow entries:", dict(skipped))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
