# Nvidia Folder Audit

Status: **PASS**

## Rules

- Modifier groups: `ALT-SHIFT`, `CTRL-SHIFT`
- BindPad Warrior Arms entries are ordered first so Warrior keys match the GGL Warrior section.
- Skips: `race`/`racial`, target/party/member rows, and `Make this key FREE` rows

## Totals

- Bindable GGL rows generated: 5860
- Free rows skipped: 278
- Race rows skipped: 706
- Target/party/member rows skipped: 2172
- Sections with generated binds: 40
- Warrior Arms GGL rows generated: 222
- BindPad rows: 244
- Unique BindPad names: 244
- Unique BindPad binds: 244

## Check Counts

- blank bindable GGL binds: 0
- empty non-free GGL descriptions: 0
- non ALT-SHIFT/CTRL-SHIFT GGL binds: 0
- skipped rows still bound: 0
- duplicate BindPad names: 0
- duplicate BindPad binds: 0
- non ALT-SHIFT/CTRL-SHIFT BindPad binds: 0

## Warrior Key Parity

| Original | BindPad name | GGL bind | Normalized GGL bind | BindPad bind | Match |
|---|---|---|---|---|---:|
| Mortal Strike | `MORTAL` | `^+O` | `CTRL-SHIFT-O` | `CTRL-SHIFT-O` | True |
| Hamstring | `HAM` | `!+B` | `ALT-SHIFT-B` | `ALT-SHIFT-B` | True |
| Execute | `EXE` | `!+A` | `ALT-SHIFT-A` | `ALT-SHIFT-A` | True |
| Charge Arena1 | `CHARGE A1` | `!+6` | `ALT-SHIFT-6` | `ALT-SHIFT-6` | True |
| Interrupt Arena1 | `INT A1` | `!+F` | `ALT-SHIFT-F` | `ALT-SHIFT-F` | True |
| Slam | `SLAM` | `!+M` | `ALT-SHIFT-M` | `ALT-SHIFT-M` | True |

## Zip File Match

- generated/Config.remade.utf8.ini: True
- generated/bindpad-import-warrior-arms.txt: True
- BindPadBulkImporter/ImportData.lua: True
- generated/warrior-arms-keybinds.md: True

## Failures

- None
