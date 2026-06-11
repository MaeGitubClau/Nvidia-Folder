# Nvidia Folder Audit

Status: **PASS**

## Totals

- Bindable GGL rows: 8738
- Free rows skipped: 278
- Sections with generated binds: 40
- Warrior Arms GGL rows: 296
- Expected BindPad rows: 322
- BindPad names: 322
- BindPad binds: 322
- Unique BindPad names: 322
- Unique BindPad binds: 322
- Packaged zip BindPad names: 322
- Packaged zip BindPad binds: 322
- Packaged zip unique BindPad names: 322
- Packaged zip unique BindPad binds: 322

## Check Counts

- blank bindable GGL binds: 0
- empty non-free GGL descriptions: 0
- forbidden SHIFT-only GGL letter/number binds: 0
- summary overflow sections: 0
- missing BindPad names: 0
- extra BindPad names: 0
- duplicate BindPad names: 0
- duplicate BindPad binds: 0
- forbidden SHIFT-only BindPad letter/number binds: 0
- plain BindPad letter/number binds: 0
- addon import escaped/truncated name collisions: 0

## Short BindPad Name Examples

| Original | BindPad name | GGL description | BindPad text | Addon data |
|---|---|---|---:|---:|
| Hamstring | `HAM` | `/cast Hamstring` | True | True |
| Mortal Strike | `MORTAL` | `/cast Mortal Strike` | True | True |
| Execute | `EXE` | `/cast Execute` | True | True |
| Charge Arena1 | `CHARGE A1` | `/cast [@arena1]Charge` | True | True |
| Interrupt Arena1 | `INT A1` | `/stopcasting§/cast [@arena1]Pummel§/cast [@arena1]Hamstring§/cast [@arena1]Titanic Throw§/cast [@arena1]Heroic Throw` | True | True |
| Slam | `SLAM` | `/cast Slam` | True | True |

## Arena Rows

| Row | Short name | Config | BindPad text | Addon data | Packaged zip |
|---|---|---:|---:|---:|---:|
| Charge Arena1 | `CHARGE A1` | True | True | True | True |
| Charge Arena2 | `CHARGE A2` | True | True | True | True |
| Charge Arena3 | `CHARGE A3` | True | True | True | True |
| Charge Arena4 | `CHARGE A4` | True | True | True | True |
| Charge Arena5 | `CHARGE A5` | True | True | True | True |
| Interrupt Arena1 | `INT A1` | True | True | True | True |
| Interrupt Arena2 | `INT A2` | True | True | True | True |
| Interrupt Arena3 | `INT A3` | True | True | True | True |
| Interrupt Arena4 | `INT A4` | True | True | True | True |
| Interrupt Arena5 | `INT A5` | True | True | True | True |

## Zip File Match

- generated/Config.remade.utf8.ini: True
- generated/bindpad-import-warrior-arms.txt: True
- BindPadBulkImporter/ImportData.lua: True
- generated/warrior-arms-keybinds.md: True

## Failures

- None
