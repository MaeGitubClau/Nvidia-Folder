# GGL BindPad Autobinder

Generated on 2026-06-11 from the supplied GGL `Config.ini`.

This package contains:

- `BACKUP.md` - how to back up the original BindPad/keybind files first.
- `generated/Config.remade.ini` - edited GGL config, UTF-16 like the original.
- `generated/Config.remade.utf8.ini` - same config in UTF-8 for reviewing on GitHub.
- `generated/bindpad-import-warrior-arms.txt` - review text for General + Warrior Arms.
- `generated/bindpad-import-all.txt` - review text for every generated section.
- `BindPadBulkImporter/` - WoW addon preloaded with General + Warrior Arms.
- `tools/remake_config.py` - generator used to rebuild the files.

## What Changed

The generator remakes bindable rows in the GGL config using a deterministic key pool.

Key order per section:

1. `ALT-SHIFT` + `1-0`, then `A-Z`
2. `CTRL-SHIFT` + `1-0`, then `A-Z`
3. `CTRL-ALT-SHIFT` + `1-0`, then `A-Z`
4. `ALT` + keys
5. `CTRL` + keys
6. `SHIFT` + keys
7. `CTRL-ALT` + keys
8. plain keys
9. `F1-F12` fallbacks only after the letter/number pool is exhausted

`START ...` rows and `Potion` rows are skipped because those are GGL control keys or special rows, not normal BindPad spell/macro actions.

## Install Edited GGL Config

1. Follow `BACKUP.md` first.
2. Close GGL.
3. Make a backup copy of your current `Config.ini`.
4. Copy `generated/Config.remade.ini`.
5. Replace your GGL `Config.ini` with that file.
6. Open GGL and verify the binds are visible.

Use `Config.remade.ini` for the actual program. The UTF-8 file is only for easier reading.

## Install BindPad Addon

1. Make sure BindPad is installed and enabled in WoW.
2. Copy the whole `BindPadBulkImporter` folder into:

   ```text
   World of Warcraft/_retail_/Interface/AddOns/
   ```

3. Start WoW and log into the Warrior.
4. Type:

   ```text
   /bpimport
   ```

5. Review the preloaded General + Warrior Arms entries.
6. Click `Import BindPad` while out of combat.
7. Type:

   ```text
   /reload
   ```

8. Open BindPad and verify the imported macros and binds.

## Notes

- The addon is preloaded for General + Warrior Arms only, because that is the class/spec you were working on.
- The edited config includes generated binds for all class/spec sections found in the supplied config.
- `generated/bindpad-import-all.txt` exists for review, but importing every class/spec into one character's BindPad is usually not what you want.
- Some rows that had no real macro text are converted to simple `/cast Ability Name` BindPad macros so the missing bound abilities are still represented.
