# Nvidia Folder BindPad Autobinder

Generated on 2026-06-11 from the supplied GGL `Config.ini`.

This package contains:

- `BACKUP.md` - how to back up the original BindPad/keybind files first.
- `generated/Config.remade.ini` - edited GGL config, UTF-16 like the original.
- `generated/Config.remade.utf8.ini` - same config in UTF-8 for reviewing on GitHub.
- `generated/bindpad-import-warrior-arms.txt` - review text for General + Warrior Arms.
- `generated/bindpad-import-all.txt` - review text for every generated section.
- `BindPadBulkImporter/` - WoW addon preloaded with General + Warrior Arms.
- `Run-Nvidia-Folder-Installer.bat` - double-click Windows installer.
- `tools/install_nvidia_folder.ps1` - installer script used by the launcher.
- `tools/remake_config.py` - generator used to rebuild the files.

## What Changed

The generator remakes bindable rows in the GGL config using a deterministic key pool.

Key order per section:

1. `CTRL` + `1-0`, then `A-Z`
2. `ALT` + `1-0`, then `A-Z`
3. `CTRL-ALT` + `1-0`, then `A-Z`
4. `CTRL-SHIFT` + `1-0`, then `A-Z`
5. `ALT-SHIFT` + `1-0`, then `A-Z`
6. `CTRL-ALT-SHIFT` + `1-0`, then `A-Z`
7. Same modifier groups with `F1-F12` only if the letter/number pool is exhausted
8. Same modifier groups with `NUMPAD1-NUMPAD0` only if more keys are still needed

The generator does not use plain unmodified movement keys like `W`, `A`, `S`, `D`, or `SPACE`. It also does not use `SHIFT`-only letters or numbers.

Rows are skipped only when their note starts with `Make this key FREE`, because those are control/free-key rows that should stay unbound.

## Install Edited GGL Config

1. Follow `BACKUP.md` first.
2. Close GGL.
3. Make a backup copy of your current `Config.ini`.
4. Copy `generated/Config.remade.ini`.
5. Replace your GGL `Config.ini` with that file.
6. Open GGL and verify the binds are visible.

Use `Config.remade.ini` for the actual program. The UTF-8 file is only for easier reading.

## One-Click Windows Installer

1. Close WoW and GGL.
2. Double-click:

   ```text
   Run-Nvidia-Folder-Installer.bat
   ```

3. If Windows asks about PowerShell, allow it to run.
4. Paste your WoW `_retail_` folder path if it is not found automatically.
5. Paste your real GGL `Config.ini` path when asked.

The installer backs up `WTF/Account`, backs up/replaces the old `BindPadBulkImporter`, installs the new safe one, backs up your old GGL `Config.ini`, then installs `generated/Config.remade.ini`.

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

The importer adds BindPad macros and only applies a key when that key is free or already points at a BindPad macro. It skips existing Blizzard/WoW bindings instead of overwriting them.

For the preloaded BindPad import, General + Warrior Arms use one continuous unique key pool so one imported BindPad key does not overwrite another.

If a macro appears in BindPad but its key does not cast in game, the safe import probably skipped that key because WoW already had something bound there. Use `Force Import` in `/bpimport` to overwrite only the keys used by this package.

### Clear Old BindPad Entries

The `/bpimport` window includes a `Clear BindPad` button. It asks for confirmation, then clears the current General and character BindPad tabs plus BindPad macro keybinds. It does not clear normal Blizzard movement/action-bar keybinds.

Use it only after backing up `WTF/Account`.

## Notes

- The addon is preloaded for General + Warrior Arms only, because that is the class/spec you were working on.
- The edited config includes generated binds for all class/spec sections found in the supplied config.
- `generated/bindpad-import-all.txt` exists for review, but importing every class/spec into one character's BindPad is usually not what you want.
- Some rows that had no real macro text are converted to simple `/cast Ability Name` BindPad macros so the missing bound abilities are still represented.
