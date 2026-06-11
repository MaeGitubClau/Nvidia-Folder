#!/usr/bin/env python3
from __future__ import annotations

import argparse
import re
from collections import Counter, defaultdict
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
]

PRIMARY_KEYS = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
PRIMARY_KEYS += list("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
FALLBACK_KEYS = [f"F{i}" for i in range(1, 25)]
NUMPAD_KEYS = [f"NUMPAD{i}" for i in range(1, 10)] + [
    "NUMPAD0",
    "NUMPADPLUS",
    "NUMPADMINUS",
    "NUMPADMULTIPLY",
    "NUMPADDIVIDE",
    "NUMPADDECIMAL",
]
EXTRA_KEYS = [
    "INSERT",
    "DELETE",
    "HOME",
    "END",
    "PAGEUP",
    "PAGEDOWN",
    "UP",
    "DOWN",
    "LEFT",
    "RIGHT",
    "TAB",
    "SPACE",
    "ENTER",
    "BACKSPACE",
    "CAPSLOCK",
    "MINUS",
    "EQUALS",
    "LBRACKET",
    "RBRACKET",
    "BACKSLASH",
    "SEMICOLON",
    "APOSTROPHE",
    "COMMA",
    "PERIOD",
    "SLASH",
    "GRAVE",
]
MOUSE_KEYS = [f"BUTTON{i}" for i in range(3, 31)]


def is_bindable_section(section: str) -> bool:
    return section == "General" or bool(CLASS_SECTION_RE.match(section))


def is_bindable_key(section: str, value: str) -> bool:
    if not is_bindable_section(section):
        return False

    after_semicolon = value.split(";", 1)[1].strip() if ";" in value else ""
    if after_semicolon.lower().startswith("make this key free"):
        return False
    return True


def skip_reason(key: str, description: str) -> str:
    haystack = f"{key} {description}".lower()
    if "race" in haystack or "racial" in haystack:
        return "race"
    if "target party member" in haystack:
        return "target_party_member"
    if re.search(r"\b(member|party)\d*\b", haystack):
        return "target_party_member"
    return ""


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

    for wow_mod, ggl_mod in GGL_MODS:
        for key in NUMPAD_KEYS:
            bind = "-".join(part for part in [wow_mod, key] if part)
            ggl = f"{ggl_mod}{key}"
            pool.append((bind, ggl))

    for wow_mod, ggl_mod in GGL_MODS:
        for key in EXTRA_KEYS:
            bind = "-".join(part for part in [wow_mod, key] if part)
            ggl = f"{ggl_mod}{key}"
            pool.append((bind, ggl))

    for wow_mod, ggl_mod in GGL_MODS:
        for key in MOUSE_KEYS:
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


def abbreviate_bindpad_key(key: str) -> str:
    text = key.strip()
    suffixes: list[str] = []

    suffix_patterns = [
        (r"\bArena([1-5])\b", "A{}"),
        (r"\bParty([1-5])\b", "P{}"),
        (r"\bMember([1-5])\b", "M{}"),
        (r"\bUnit([0-9]+)\b", "U{}"),
    ]
    for pattern, template in suffix_patterns:
        match = re.search(pattern, text, flags=re.IGNORECASE)
        if match:
            suffixes.append(template.format(match.group(1)))
            text = re.sub(pattern, "", text, flags=re.IGNORECASE).strip()

    word_suffixes = {
        "Focus": "FOC",
        "Mouseover": "MO",
        "Target": "TGT",
        "Cursor": "CUR",
        "Pet": "PET",
        "Pets": "PETS",
    }
    for word, suffix in word_suffixes.items():
        if re.search(rf"\b{word}\b", text, flags=re.IGNORECASE):
            suffixes.append(suffix)
            text = re.sub(rf"\b{word}\b", "", text, flags=re.IGNORECASE).strip()

    text = re.sub(r"\s+", " ", text).strip()
    upper = text.upper()
    special = [
        ("MORTAL STRIKE", "MORTAL"),
        ("HAMSTRING", "HAM"),
        ("EXECUTE", "EXE"),
        ("INTERRUPT", "INT"),
        ("SHIELD SLAM", "SHIELD"),
        ("SLAM", "SLAM"),
        ("CHARGE", "CHARGE"),
        ("STORM BOLT", "STORM"),
        ("INTIMIDATING SHOUT", "INTIM"),
        ("SPELL REFLECTION", "REFLECT"),
        ("SPELL REFLECT", "REFLECT"),
        ("WHIRLWIND", "WHIRL"),
        ("OVERPOWER", "OVER"),
        ("COLOSSUS SMASH", "COLOSSUS"),
        ("AVATAR", "AVATAR"),
        ("REND", "REND"),
        ("TAUNT", "TAUNT"),
        ("PUMMEL", "PUMMEL"),
    ]
    base = ""
    for prefix, abbreviation in special:
        if upper.startswith(prefix):
            base = abbreviation
            break

    if not base:
        words = upper.split()
        if not words:
            base = "MACRO"
        elif len(words) == 1:
            base = words[0][:8]
        else:
            base = " ".join(word[:5] for word in words[:2])

    parts = [base] + suffixes
    name = " ".join(part for part in parts if part)
    name = re.sub(r"[^A-Z0-9 _-]", "", name)
    name = re.sub(r"\s+", " ", name).strip()
    return (name or "MACRO")[:32]


def bindpad_macro_name(section: str, key: str) -> str:
    if section == "General":
        return ("GEN " + abbreviate_bindpad_key(key))[:32]
    return abbreviate_bindpad_key(key)


def parse_and_generate(lines: list[str], suffix: str):
    pools: dict[str, list[tuple[str, str]]] = defaultdict(lambda: make_pool(suffix))
    used: dict[str, int] = defaultdict(int)
    current_section = ""
    updated: list[str] = []
    bindpad_entries: list[dict[str, str]] = []
    counts: dict[str, int] = defaultdict(int)
    overflow: dict[str, int] = defaultdict(int)
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

        after_semicolon = value.split(";", 1)[1] if ";" in value else ""
        reason = skip_reason(key, after_semicolon)
        if reason:
            skipped[reason] += 1
            updated.append(f"{key}=;{after_semicolon}")
            continue

        pool = pools[current_section]
        index = used[current_section]
        if index >= len(pool):
            overflow[current_section] += 1
            updated.append(stripped)
            continue

        wow_bind, ggl_bind = pool[index]
        used[current_section] += 1

        config_description = after_semicolon if after_semicolon.strip() else f" /cast {key}"
        updated.append(f"{key}={ggl_bind};{config_description}")

        bindpad_entries.append(
            {
                "section": current_section,
                "name": bindpad_macro_name(current_section, key),
                "bind": wow_bind,
                "macro": macro_text_for(key, config_description),
            }
        )
        counts[current_section] += 1

    return updated, bindpad_entries, counts, overflow, skipped


def select_bindpad_entries(
    entries: list[dict[str, str]],
    section_filter: str | None = None,
    unique_binds: bool = False,
) -> list[dict[str, str]]:
    selected: list[dict[str, str]] = []
    pool = make_pool("") if unique_binds else []
    used_names: Counter[str] = Counter()
    source_entries = entries

    if section_filter:
        source_entries = [entry for entry in entries if entry["section"] == section_filter]
        source_entries += [entry for entry in entries if entry["section"] == "General"]

    for entry in source_entries:
        if section_filter and entry["section"] not in {"General", section_filter}:
            continue

        selected_entry = dict(entry)
        if unique_binds:
            if len(selected) >= len(pool):
                raise RuntimeError("not enough unique BindPad keys for selected import")
            selected_entry["bind"] = pool[len(selected)][0]

        base_name = selected_entry["name"][:32]
        used_names[base_name] += 1
        if used_names[base_name] > 1:
            suffix = str(used_names[base_name])
            selected_entry["name"] = f"{base_name[:31 - len(suffix)]}{suffix}"
        else:
            selected_entry["name"] = base_name
        selected.append(selected_entry)

    return selected


def build_bindpad_text(entries: list[dict[str, str]]) -> str:
    lines = ["#bindpad"]
    current_tab = ""
    for entry in entries:
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


def build_section_markdown(entries: list[dict[str, str]], section: str) -> str:
    lines = [f"# {section} Keybinds", ""]
    lines.append("| Name | Bind | Macro |")
    lines.append("|---|---|---|")
    for entry in entries:
        if entry["section"] != section:
            continue
        macro = entry["macro"].replace("\n", "<br>")
        lines.append(f"| {entry['name']} | `{entry['bind']}` | {macro} |")
    return "\n".join(lines) + "\n"


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
    updated_lines, entries, counts, overflow, skipped = parse_and_generate(source_lines, suffix)

    edited_text = "\n".join(updated_lines) + "\n"
    (out_dir / "Config.remade.ini").write_text(edited_text, encoding="utf-16")
    (out_dir / "Config.remade.utf8.ini").write_text(edited_text, encoding="utf-8")

    all_text = build_bindpad_text(select_bindpad_entries(entries))
    (out_dir / "bindpad-import-all.txt").write_text(all_text, encoding="utf-8")

    addon_entries = select_bindpad_entries(entries, args.addon_section, unique_binds=True)
    addon_text = build_bindpad_text(addon_entries)
    (out_dir / "bindpad-import-warrior-arms.txt").write_text(addon_text, encoding="utf-8")
    (out_dir / "warrior-arms-keybinds.md").write_text(
        build_section_markdown(addon_entries, args.addon_section),
        encoding="utf-8",
    )
    (addon_dir / "ImportData.lua").write_text(
        "-- Generated from remade GGL config.\n" + lua_long_string(addon_text),
        encoding="utf-8",
    )

    summary_lines = ["# Generation Summary", "", f"GGL suffix: `{suffix}`", ""]
    summary_lines.append("## Sections")
    summary_lines.append("")
    summary_lines.append("| Section | Generated binds | Skipped overflow |")
    summary_lines.append("|---|---:|---:|")
    for section in sorted(counts):
        summary_lines.append(f"| {section} | {counts[section]} | {overflow.get(section, 0)} |")
    summary_lines.append("")
    summary_lines.append("## Intentional Skips")
    summary_lines.append("")
    summary_lines.append("| Reason | Rows skipped |")
    summary_lines.append("|---|---:|")
    for reason in sorted(skipped):
        summary_lines.append(f"| {reason} | {skipped[reason]} |")
    (out_dir / "SUMMARY.md").write_text("\n".join(summary_lines) + "\n", encoding="utf-8")

    print(f"generated {sum(counts.values())} config binds across {len(counts)} sections")
    print(f"addon section: {args.addon_section}")
    print(f"addon import entries: {addon_text.count('@bind ')}")
    if any(overflow.values()):
        print("warning: skipped overflow entries:", dict(overflow))
    if any(skipped.values()):
        print("intentional skips:", dict(skipped))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
