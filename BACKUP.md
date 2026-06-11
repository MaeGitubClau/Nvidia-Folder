# Back Up Original BindPad

Do this before installing the edited config or importing anything into BindPad.

## Easy Manual Backup

1. Close WoW.
2. Open:

   ```text
   World of Warcraft/_retail_/WTF/Account/
   ```

3. Copy the whole `Account` folder somewhere safe, such as your Desktop.

That backs up BindPad saved variables and character keybinding cache files.

## Smaller BindPad-Only Backup

Back up these files if they exist:

```text
World of Warcraft/_retail_/WTF/Account/YOURACCOUNT/SavedVariables/BindPad.lua
World of Warcraft/_retail_/WTF/Account/YOURACCOUNT/SavedVariables/BindPad.lua.bak
World of Warcraft/_retail_/WTF/Account/YOURACCOUNT/YOURREALM/YOURCHARACTER/bindings-cache.wtf
```

There may be multiple realm/character folders. Back up each character's `bindings-cache.wtf` if you care about their current keybinds.

## PowerShell Backup Script

You can also use:

```text
tools/backup_bindpad.ps1
```

Right-click PowerShell, run as normal user, then run:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\backup_bindpad.ps1
```

When it asks for your WoW `_retail_` path, paste something like:

```text
C:\Program Files (x86)\World of Warcraft\_retail_
```

It creates a timestamped folder like:

```text
BindPadBackup-20260611-091500
```

inside your `_retail_` folder.
