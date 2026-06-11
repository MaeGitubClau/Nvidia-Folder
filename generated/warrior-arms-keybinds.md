# Warrior - Arms Keybinds

| Name | Bind | Macro |
|---|---|---|
| START SECON | `CTRL-Q` | /cast START Secondary Rotation |
| SWAPWEAP | `CTRL-R` | /stopcasting<br>/equipslot [noworn:shield] 16 one-main-hand<br>/equipslot [noworn:shield] 17 shield<br>/equip two-hander<br><br>Macro for swap between dual one hand to shield+one hand:<br>/stopcasting<br>/equipslot [noworn:shield] 16 one-main-hand<br>/equipslot [noworn:shield] 17 shield<br>/equipslot [worn:shield,noworn:two-hand] 16 one-main-hand<br>/equipslot [worn:shield] 17 one-off-hand<br>Note: When making this macro you'll need to replace one-hander, shield, and two-hander with the names of the weapons that your character is specifically using. For instance, if you were using Obsidian Edged Blade you would write Obsidian Edged Blade instead of two-hander<br>[shield] must be localized to your native language too!!!<br> IconID: 132996, spellID: 20219<br><br>[3->4] meta slots |
| BATTL SHOUT | `CTRL-S` | /startattack<br>/cast Battle Shout |
| BERSE ROAR | `CTRL-T` | /cast Berserker Roar<br>/cast Berserker Shout<br>/cast Berserker Rage |
| CHARGE | `CTRL-U` | /startattack<br>/cast [@mouseover,harm][]Charge |
| CHARGE A1 | `CTRL-V` | /cast [@arena1]Charge |
| CHARGE A2 | `CTRL-W` | /cast [@arena2]Charge |
| CHARGE A3 | `CTRL-X` | /cast [@arena3]Charge |
| CHARGE A4 | `CTRL-Y` | /cast [@arena4]Charge |
| CHARGE A5 | `CTRL-Z` | /cast [@arena5]Charge |
| EXE | `ALT-1` | /cast Execute |
| HAM | `ALT-2` | /cast Hamstring |
| HEROI THROW | `ALT-3` | /cast Heroic Throw |
| INT | `ALT-4` | /stopcasting<br>/cast [@mouseover,harm][]Pummel |
| INT FOC | `ALT-5` | /stopcasting<br>/cast [@focus]Pummel |
| INT A1 | `ALT-6` | /stopcasting<br>/cast [@arena1]Pummel<br>/cast [@arena1]Hamstring<br>/cast [@arena1]Titanic Throw<br>/cast [@arena1]Heroic Throw |
| INT A2 | `ALT-7` | /stopcasting<br>/cast [@arena2]Pummel<br>/cast [@arena2]Hamstring<br>/cast [@arena2]Titanic Throw<br>/cast [@arena2]Heroic Throw |
| INT A3 | `ALT-8` | /stopcasting<br>/cast [@arena3]Pummel<br>/cast [@arena3]Hamstring<br>/cast [@arena3]Titanic Throw<br>/cast [@arena3]Heroic Throw |
| INT A4 | `ALT-9` | /stopcasting<br>/cast [@arena4]Pummel<br>/cast [@arena4]Hamstring<br>/cast [@arena4]Titanic Throw<br>/cast [@arena4]Heroic Throw |
| INT A5 | `ALT-0` | /stopcasting<br>/cast [@arena5]Pummel<br>/cast [@arena5]Hamstring<br>/cast [@arena5]Titanic Throw<br>/cast [@arena5]Heroic Throw |
| SHIEL BLOCK | `ALT-A` | /startattack<br>/cast Shield Block |
| SHIELD | `ALT-B` | /cast Shield Slam |
| SLAM | `ALT-C` | /cast Slam |
| TAUNT | `ALT-D` | /cast [@mouseover,harm][]Oppressor<br>/cast [@mouseover,harm][]Taunt |
| TAUNT PETS | `ALT-E` | /stopcasting<br>/cast [@arenapet1,harm]Oppressor<br>/cast [@arenapet2,harm]Oppressor<br>/cast [@arenapet3,harm]Oppressor<br>/cast [@arenapet4,harm]Oppressor<br>/cast [@arenapet5,harm]Oppressor<br>/cast [@arenapet1,harm]Taunt<br>/cast [@arenapet2,harm]Taunt<br>/cast [@arenapet3,harm]Taunt<br>/cast [@arenapet4,harm]Taunt<br>/cast [@arenapet5,harm]Taunt |
| TAUNT U1 | `ALT-F` | /stopcasting<br>/cast [@raidpet1,harm][@raid1,harm][@partypet1,harm][@party1,harm][@arenapet1,harm][@arena1]Oppressor<br>/cast [@raidpet1,harm][@raid1,harm][@partypet1,harm][@party1,harm][@arenapet1,harm][@arena1]Taunt |
| TAUNT U2 | `ALT-G` | /stopcasting<br>/cast [@raidpet2,harm][@raid2,harm][@partypet2,harm][@party2,harm][@arenapet2,harm][@arena2]Oppressor<br>/cast [@raidpet2,harm][@raid2,harm][@partypet2,harm][@party2,harm][@arenapet2,harm][@arena2]Taunt |
| TAUNT U3 | `ALT-H` | /stopcasting<br>/cast [@raidpet3,harm][@raid3,harm][@partypet3,harm][@party3,harm][@arenapet3,harm][@arena3]Oppressor<br>/cast [@raidpet3,harm][@raid3,harm][@partypet3,harm][@party3,harm][@arenapet3,harm][@arena3]Taunt |
| TAUNT U4 | `ALT-I` | /stopcasting<br>/cast [@raidpet4,harm][@raid4,harm][@partypet4,harm][@party4,harm][@arenapet4,harm][@arena4]Oppressor<br>/cast [@raidpet4,harm][@raid4,harm][@partypet4,harm][@party4,harm][@arenapet4,harm][@arena4]Taunt |
| TAUNT U5 | `ALT-J` | /stopcasting<br>/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Oppressor<br>/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Taunt |
| IMPEN VICTO | `ALT-K` | /cast Impending Victory<br>/cast Victory Rush |
| WHIRL | `ALT-L` | /cast Whirlwind |
| BATTL STANC | `ALT-M` | /cast Battle Stance |
| DEFEN STANC | `ALT-N` | /cast Defensive Stance |
| INTERVEN | `ALT-O` | /stopcasting<br>/cast [@mouseover,help][@focus,help][]Intervene |
| INTERVEN M1 | `ALT-P` | /run GetLOS(UnitExists('raid1') and 'raid1' or 'party1')<br>/cast [@raid1,exists][@party1,exists]Intervene |
| INTERVEN M2 | `ALT-Q` | /run GetLOS(UnitExists('raid2') and 'raid2' or 'party2')<br>/cast [@raid2,exists][@party2,exists]Intervene |
| INTERVEN M3 | `ALT-R` | /run GetLOS(UnitExists('raid3') and 'raid3' or 'party3')<br>/cast [@raid3,exists][@party3,exists]Intervene |
| INTERVEN M4 | `ALT-S` | /run GetLOS(UnitExists('raid4') and 'raid4' or 'party4')<br>/cast [@raid4,exists][@party4,exists]Intervene |
| INTERVEN M5 | `ALT-T` | /run GetLOS(UnitExists('raid5') and 'raid5' or 'player')<br>/cast [@raid5,exists][@player,exists]Intervene |
| HEROI LEAP | `ALT-U` | /cast Heroic Leap |
| STORM | `ALT-V` | /stopcasting<br>/cast [@mouseover,harm][]Storm Bolt |
| STORM FOC | `ALT-W` | /stopcasting<br>/cast [@focus]Storm Bolt |
| STORM A1 | `ALT-X` | /stopcasting<br>/cast [@arena1]Storm Bolt |
| STORM A2 | `ALT-Y` | /stopcasting<br>/cast [@arena2]Storm Bolt |
| STORM A3 | `ALT-Z` | /stopcasting<br>/cast [@arena3]Storm Bolt |
| STORM A4 | `CTRL-ALT-1` | /stopcasting<br>/cast [@arena4]Storm Bolt |
| STORM A5 | `CTRL-ALT-2` | /stopcasting<br>/cast [@arena5]Storm Bolt |
| INTIM | `CTRL-ALT-3` | /stopattack<br>/cast [@mouseover,harm][]Intimidating Shout |
| INTIM A1 | `CTRL-ALT-4` | /cast [@arena1]Intimidating Shout |
| INTIM A2 | `CTRL-ALT-5` | /cast [@arena2]Intimidating Shout |
| INTIM A3 | `CTRL-ALT-6` | /cast [@arena3]Intimidating Shout |
| INTIM A4 | `CTRL-ALT-7` | /cast [@arena4]Intimidating Shout |
| INTIM A5 | `CTRL-ALT-8` | /cast [@arena5]Intimidating Shout |
| THUND CLAP | `CTRL-ALT-9` | /cast Thunder Clap |
| REFLECT | `CTRL-ALT-0` | /startattack<br>/stopcasting<br>/cast Spell Reflection |
| RALLY CRY | `CTRL-ALT-A` | /startattack<br>/cast Rallying Cry |
| SHOCKWAV | `CTRL-ALT-B` | /cast Shockwave |
| BITTE IMMUN | `CTRL-ALT-C` | /cast Bitter Immunity |
| WRECK THROW | `CTRL-ALT-D` | /cast Wrecking Throw<br>/cast Shattering Throw |
| PIERC HOWL | `CTRL-ALT-E` | /cast Piercing Howl |
| THUND ROAR | `CTRL-ALT-F` | /cast Thunderous Roar |
| AVATAR | `CTRL-ALT-G` | /startattack<br>/cast Avatar |
| CHAMP SPEAR | `CTRL-ALT-H` | /cast [combat,@player][]Champion's Spear |
| SWEEP STRIK | `CTRL-ALT-I` | /cast Sweeping Strikes |
| CLEAVE | `CTRL-ALT-J` | /cast Cleave |
| DEMOLISH | `CTRL-ALT-K` | /cast Demolish |
| DIE BY | `CTRL-ALT-L` | /cast Die by the Sword |
| IGNOR PAIN | `CTRL-ALT-M` | /startattack<br>/cast Ignore Pain |
| MORTAL | `CTRL-ALT-N` | /cast Mortal Strike |
| OVER | `CTRL-ALT-O` | /cast Overpower |
| BLADE | `CTRL-ALT-P` | /cast Bladestorm<br>/cast [combat,@player][]Ravager |
| REND | `CTRL-ALT-Q` | /cast Rend |
| REND A1 | `CTRL-ALT-R` | /cast [@arena1]Rend |
| REND A2 | `CTRL-ALT-S` | /cast [@arena2]Rend |
| REND A3 | `CTRL-ALT-T` | /cast [@arena3]Rend |
| REND A4 | `CTRL-ALT-U` | /cast [@arena4]Rend |
| REND A5 | `CTRL-ALT-V` | /cast [@arena5]Rend |
| SKULLSPL | `CTRL-ALT-W` | /cast Skullsplitter |
| WARBR | `CTRL-ALT-X` | /cast Warbreaker<br>/cast Colossus Smash |
| DISARM | `CTRL-ALT-Y` | /stopcasting<br>/cast [@mouseover,harm][]Disarm |
| DISARM A1 | `CTRL-ALT-Z` | /stopcasting<br>/cast [@arena1]Disarm |
| DISARM A2 | `CTRL-SHIFT-1` | /stopcasting<br>/cast [@arena2]Disarm |
| DISARM A3 | `CTRL-SHIFT-2` | /stopcasting<br>/cast [@arena3]Disarm |
| DISARM A4 | `CTRL-SHIFT-3` | /stopcasting<br>/cast [@arena4]Disarm |
| DISARM A5 | `CTRL-SHIFT-4` | /stopcasting<br>/cast [@arena5]Disarm |
| DUEL | `CTRL-SHIFT-5` | /startattack<br>/cast Duel |
| DUEL A1 | `CTRL-SHIFT-6` | /cast [@arena1]Duel |
| DUEL A2 | `CTRL-SHIFT-7` | /cast [@arena2]Duel |
| DUEL A3 | `CTRL-SHIFT-8` | /cast [@arena3]Duel |
| DUEL A4 | `CTRL-SHIFT-9` | /cast [@arena4]Duel |
| DUEL A5 | `CTRL-SHIFT-0` | /cast [@arena5]Duel |
| SHARP BLADE | `CTRL-SHIFT-A` | /startattack<br>/cast Sharpen Blade |
| HUMAN RACIA | `CTRL-SHIFT-B` | /cast Human Racial |
| STONEFOR | `CTRL-SHIFT-C` | /cast Stoneform |
| SHADOWME | `CTRL-SHIFT-D` | /cast Shadowmeld |
| ESCAP ARTIS | `CTRL-SHIFT-E` | /cast Escape Artist |
| GIFT OF | `CTRL-SHIFT-F` | /cast [@mouseover,help][@focus,help][]Gift of the Naaru |
| DARKFLIG | `CTRL-SHIFT-G` | /cast Darkflight |
| BLOOD FURY | `CTRL-SHIFT-H` | /cast Blood Fury |
| WILL OF | `CTRL-SHIFT-I` | /cast Will of the Forsaken |
| WAR STOMP | `CTRL-SHIFT-J` | /cast War Stomp |
| BERSERKI | `CTRL-SHIFT-K` | /cast Berserking |
| ARCAN TORRE | `CTRL-SHIFT-L` | /cast Arcane Torrent |
| ROCKE JUMP | `CTRL-SHIFT-M` | /cast Rocket Jump |
| ROCKE BARRA | `CTRL-SHIFT-N` | /cast Rocket Barrage |
| QUAKI PALM | `CTRL-SHIFT-O` | /cast [@mouseover,harm][]Quaking Palm |
| SPATI RIFT | `CTRL-SHIFT-P` | /cast Spatial Rift |
| LIGHT JUDGM | `CTRL-SHIFT-Q` | /cast Light's Judgment |
| FIREBLOO | `CTRL-SHIFT-R` | /cast Fireblood |
| ARCAN PULSE | `CTRL-SHIFT-S` | /cast Arcane Pulse |
| BULL RUSH | `CTRL-SHIFT-T` | /cast Bull Rush |
| ANCES CALL | `CTRL-SHIFT-U` | /cast Ancestral Call |
| HAYMAKER | `CTRL-SHIFT-V` | /cast [@mouseover,harm][]Haymaker |
| REGENERA | `CTRL-SHIFT-W` | /cast Regeneratin |
| BAG OF | `CTRL-SHIFT-X` | /cast [nocombat]Rummage Your Bag;[combat,@mouseover,exists][combat]Bag of Tricks |
| HYPER ORGAN | `CTRL-SHIFT-Y` | /cast Hyper Organic Light Originator |
| AZERI SURGE | `CTRL-SHIFT-Z` | /cast Azerite Surge |
| ROTATION | `ALT-SHIFT-1` | /cast Rotation |
| MACRO M1 TGT | `ALT-SHIFT-2` | /focus [mod:ctrl]raidpet1; [mod:alt]party1; raid1<br><br>Note: Don't use ALT CTRL to bind this key! |
| MACRO M2 TGT | `ALT-SHIFT-3` | /focus [mod:ctrl]raidpet2; [mod:alt]party2; raid2<br><br>Note: Don't use ALT CTRL to bind this key! |
| MACRO M3 TGT | `ALT-SHIFT-4` | /focus [mod:ctrl]raidpet3; [mod:alt]party3; raid3<br><br>Note: Don't use ALT CTRL to bind this key! |
| MACRO M4 TGT | `ALT-SHIFT-5` | /focus [mod:ctrl]raidpet4; [mod:alt]party4; raid4<br><br>Note: Don't use ALT CTRL to bind this key! |
| MACRO M5 TGT | `ALT-SHIFT-6` | /focus [mod:ctrl]raidpet5; [mod:alt]player; raid5<br><br>Note: Don't use ALT CTRL to bind this key! |
| MEMBER6 TGT | `ALT-SHIFT-7` | /focus [mod:ctrl]raidpet6; [mod:alt]focus; raid6<br><br>Note: Don't use ALT CTRL to bind this key! |
| MEMBER7 TGT | `ALT-SHIFT-8` | /focus [mod:ctrl]raidpet7; [mod:alt]partypet1; raid7<br><br>Note: Don't use ALT CTRL to bind this key! |
| MEMBER8 TGT | `ALT-SHIFT-9` | /focus [mod:ctrl]raidpet8; [mod:alt]partypet2; raid8<br><br>Note: Don't use ALT CTRL to bind this key! |
| MEMBER9 TGT | `ALT-SHIFT-0` | /focus [mod:ctrl]raidpet9; [mod:alt]partypet3; raid9<br><br>Note: Don't use ALT CTRL to bind this key! |
| MEMBER10 TGT | `ALT-SHIFT-A` | /focus [mod:ctrl]raidpet10; [mod:alt]partypet4; raid10<br><br>Note: Don't use ALT CTRL to bind this key! |
| MEMBER11 TGT | `ALT-SHIFT-B` | /focus [mod:ctrl]raidpet11; raid11<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER12 TGT | `ALT-SHIFT-C` | /focus [mod:ctrl]raidpet12; raid12<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER13 TGT | `ALT-SHIFT-D` | /focus [mod:ctrl]raidpet13; raid13<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER14 TGT | `ALT-SHIFT-E` | /focus [mod:ctrl]raidpet14; raid14<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER15 TGT | `ALT-SHIFT-F` | /focus [mod:ctrl]raidpet15; raid15<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER16 TGT | `ALT-SHIFT-G` | /focus [mod:ctrl]raidpet16; raid16<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER17 TGT | `ALT-SHIFT-H` | /focus [mod:ctrl]raidpet17; raid17<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER18 TGT | `ALT-SHIFT-I` | /focus [mod:ctrl]raidpet18; raid18<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER19 TGT | `ALT-SHIFT-J` | /focus [mod:ctrl]raidpet19; raid19<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER20 TGT | `ALT-SHIFT-K` | /focus [mod:ctrl]raidpet20; raid20<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER21 TGT | `ALT-SHIFT-L` | /focus [mod:ctrl]raidpet21; raid21<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER22 TGT | `ALT-SHIFT-M` | /focus [mod:ctrl]raidpet22; raid22<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER23 TGT | `ALT-SHIFT-N` | /focus [mod:ctrl]raidpet23; raid23<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER24 TGT | `ALT-SHIFT-O` | /focus [mod:ctrl]raidpet24; raid24<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER25 TGT | `ALT-SHIFT-P` | /focus [mod:ctrl]raidpet25; raid25<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER26 TGT | `ALT-SHIFT-Q` | /focus [mod:ctrl]raidpet26; raid26<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER27 TGT | `ALT-SHIFT-R` | /focus [mod:ctrl]raidpet27; raid27<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER28 TGT | `ALT-SHIFT-S` | /focus [mod:ctrl]raidpet28; raid28<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER29 TGT | `ALT-SHIFT-T` | /focus [mod:ctrl]raidpet29; raid29<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER30 TGT | `ALT-SHIFT-U` | /focus [mod:ctrl]raidpet30; raid30<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER31 TGT | `ALT-SHIFT-V` | /focus [mod:ctrl]raidpet31; raid31<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER32 TGT | `ALT-SHIFT-W` | /focus [mod:ctrl]raidpet32; raid32<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER33 TGT | `ALT-SHIFT-X` | /focus [mod:ctrl]raidpet33; raid33<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER34 TGT | `ALT-SHIFT-Y` | /focus [mod:ctrl]raidpet34; raid34<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER35 TGT | `ALT-SHIFT-Z` | /focus [mod:ctrl]raidpet35; raid35<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER36 TGT | `CTRL-ALT-SHIFT-1` | /focus [mod:ctrl]raidpet36; raid36<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER37 TGT | `CTRL-ALT-SHIFT-2` | /focus [mod:ctrl]raidpet37; raid37<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER38 TGT | `CTRL-ALT-SHIFT-3` | /focus [mod:ctrl]raidpet38; raid38<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER39 TGT | `CTRL-ALT-SHIFT-4` | /focus [mod:ctrl]raidpet39; raid39<br><br>Note: Don't use CTRL to bind this key! |
| MEMBER40 TGT | `CTRL-ALT-SHIFT-5` | /focus [mod:ctrl]raidpet40; raid40<br><br>Note: Don't use CTRL to bind this key! |
| SECON ROTAT | `CTRL-ALT-SHIFT-6` | /cast Secondary Rotation |
| TRINK ROTAT | `CTRL-ALT-SHIFT-7` | /cast Trinket Rotation |
| ANTIF CC | `CTRL-ALT-SHIFT-8` | /cast AntiFake CC |
| ANTIF CC FOC | `CTRL-ALT-SHIFT-9` | /cast AntiFake CC Focus |
| ANTIF INTER | `CTRL-ALT-SHIFT-0` | /cast AntiFake Interrupt |
| ANTIF INTER FOC | `CTRL-ALT-SHIFT-A` | /cast AntiFake Interrupt Focus |
| ANTIF CC2 | `CTRL-ALT-SHIFT-B` | /cast AntiFake CC2 |
| ANTIF CC2 FOC | `CTRL-ALT-SHIFT-C` | /cast AntiFake CC2 Focus |
| POTION | `CTRL-ALT-SHIFT-D` | /cast Potion |
| UNIVERSA | `CTRL-ALT-SHIFT-E` | /cast Universal1 |
| UNIVERSA2 | `CTRL-ALT-SHIFT-F` | /cast Universal2 |
| UNIVERSA3 | `CTRL-ALT-SHIFT-G` | /cast Universal3 |
| UNIVERSA4 | `CTRL-ALT-SHIFT-H` | /cast Universal4 |
| UNIVERSA5 | `CTRL-ALT-SHIFT-I` | /cast Universal5 |
| UNIVERSA6 | `CTRL-ALT-SHIFT-J` | /cast Universal6 |
| UNIVERSA7 | `CTRL-ALT-SHIFT-K` | /cast Universal7 |
| UNIVERSA8 | `CTRL-ALT-SHIFT-L` | /cast Universal8 |
| UNIVERSA9 | `CTRL-ALT-SHIFT-M` | /cast Universal9 |
| UNIVERSA10 | `CTRL-ALT-SHIFT-N` | /cast Universal10 |
| UNIVERSA U1 | `CTRL-ALT-SHIFT-O` | /cast Universal1 Unit1 |
| UNIVERSA U2 | `CTRL-ALT-SHIFT-P` | /cast Universal1 Unit2 |
| UNIVERSA U3 | `CTRL-ALT-SHIFT-Q` | /cast Universal1 Unit3 |
| UNIVERSA U4 | `CTRL-ALT-SHIFT-R` | /cast Universal1 Unit4 |
| UNIVERSA U5 | `CTRL-ALT-SHIFT-S` | /cast Universal1 Unit5 |
| UNIVERSA U12 | `CTRL-ALT-SHIFT-T` | /cast Universal2 Unit1 |
| UNIVERSA U22 | `CTRL-ALT-SHIFT-U` | /cast Universal2 Unit2 |
| UNIVERSA U32 | `CTRL-ALT-SHIFT-V` | /cast Universal2 Unit3 |
| UNIVERSA U42 | `CTRL-ALT-SHIFT-W` | /cast Universal2 Unit4 |
| UNIVERSA U52 | `CTRL-ALT-SHIFT-X` | /cast Universal2 Unit5 |
| UNIVERSA U13 | `CTRL-ALT-SHIFT-Y` | /cast Universal3 Unit1 |
| UNIVERSA U23 | `CTRL-ALT-SHIFT-Z` | /cast Universal3 Unit2 |
| UNIVERSA U33 | `CTRL-F1` | /cast Universal3 Unit3 |
| UNIVERSA U43 | `CTRL-F2` | /cast Universal3 Unit4 |
| UNIVERSA U53 | `CTRL-F3` | /cast Universal3 Unit5 |
| UNIVERSA U14 | `CTRL-F4` | /cast Universal4 Unit1 |
| UNIVERSA U24 | `CTRL-F5` | /cast Universal4 Unit2 |
| UNIVERSA U34 | `CTRL-F6` | /cast Universal4 Unit3 |
| UNIVERSA U44 | `CTRL-F7` | /cast Universal4 Unit4 |
| UNIVERSA U54 | `CTRL-F8` | /cast Universal4 Unit5 |
| UNIVERSA U15 | `CTRL-F9` | /cast Universal5 Unit1 |
| UNIVERSA U25 | `CTRL-F10` | /cast Universal5 Unit2 |
| UNIVERSA U35 | `CTRL-F11` | /cast Universal5 Unit3 |
| UNIVERSA U45 | `CTRL-F12` | /cast Universal5 Unit4 |
| UNIVERSA U55 | `ALT-F1` | /cast Universal5 Unit5 |
| UNIVERSA U16 | `ALT-F2` | /cast Universal6 Unit1 |
| UNIVERSA U26 | `ALT-F3` | /cast Universal6 Unit2 |
| UNIVERSA U36 | `ALT-F4` | /cast Universal6 Unit3 |
| UNIVERSA U46 | `ALT-F5` | /cast Universal6 Unit4 |
| UNIVERSA U56 | `ALT-F6` | /cast Universal6 Unit5 |
| UNIVERSA U17 | `ALT-F7` | /cast Universal7 Unit1 |
| UNIVERSA U27 | `ALT-F8` | /cast Universal7 Unit2 |
| UNIVERSA U37 | `ALT-F9` | /cast Universal7 Unit3 |
| UNIVERSA U47 | `ALT-F10` | /cast Universal7 Unit4 |
| UNIVERSA U57 | `ALT-F11` | /cast Universal7 Unit5 |
| UNIVERSA U18 | `ALT-F12` | /cast Universal8 Unit1 |
| UNIVERSA U28 | `CTRL-ALT-F1` | /cast Universal8 Unit2 |
| UNIVERSA U38 | `CTRL-ALT-F2` | /cast Universal8 Unit3 |
| UNIVERSA U48 | `CTRL-ALT-F3` | /cast Universal8 Unit4 |
| UNIVERSA U58 | `CTRL-ALT-F4` | /cast Universal8 Unit5 |
| UNIVERSA U19 | `CTRL-ALT-F5` | /cast Universal9 Unit1 |
| UNIVERSA U29 | `CTRL-ALT-F6` | /cast Universal9 Unit2 |
| UNIVERSA U39 | `CTRL-ALT-F7` | /cast Universal9 Unit3 |
| UNIVERSA U49 | `CTRL-ALT-F8` | /cast Universal9 Unit4 |
| UNIVERSA U59 | `CTRL-ALT-F9` | /cast Universal9 Unit5 |
| UNIVERSA U110 | `CTRL-ALT-F10` | /cast Universal10 Unit1 |
| UNIVERSA U210 | `CTRL-ALT-F11` | /cast Universal10 Unit2 |
| UNIVERSA U310 | `CTRL-ALT-F12` | /cast Universal10 Unit3 |
| UNIVERSA U410 | `CTRL-SHIFT-F1` | /cast Universal10 Unit4 |
| UNIVERSA U510 | `CTRL-SHIFT-F2` | /cast Universal10 Unit5 |
| EVERY MAN | `CTRL-SHIFT-F3` | /cast Every Man for Himself |
| DARK FLIGH | `CTRL-SHIFT-F4` | /cast Dark Flight |
| RAVAGER | `CTRL-SHIFT-F5` | /cast Ravager |
| WARBREAK | `CTRL-SHIFT-F6` | /cast Warbreaker |
| COLOSSUS | `CTRL-SHIFT-F7` | /cast Colossus Smash |
| TEST OF | `CTRL-SHIFT-F8` | /cast Test of Might |
| BLADESTO | `CTRL-SHIFT-F9` | /cast Bladestorm |
| TIDEO BLOOD | `CTRL-SHIFT-F10` | /cast Tideof Blood |
| BATTLELO | `CTRL-SHIFT-F11` | /cast Battlelord |
| UNHINGED | `CTRL-SHIFT-F12` | /cast Unhinged |
| FERVO BATTL | `ALT-SHIFT-F1` | /cast Fervorof Battle |
| HEROI STRIK | `ALT-SHIFT-F2` | /cast Heroic Strike |
| IMPEN VICTO2 | `ALT-SHIFT-F3` | /cast Impending Victory |
| WRECK THROW2 | `ALT-SHIFT-F4` | /cast Wrecking Throw |
| MASSACRE | `ALT-SHIFT-F5` | /cast Massacre |
| SONIC BOOM | `ALT-SHIFT-F6` | /cast Sonic Boom |
| BLOOD THUND | `ALT-SHIFT-F7` | /cast Bloodand Thunder |
| BLADE TORME | `ALT-SHIFT-F8` | /cast Blademasters Torment |
| STORM SWORD | `ALT-SHIFT-F9` | /cast Stormof Swords |
| CRUSH FORCE | `ALT-SHIFT-F10` | /cast Crushing Force |
| WARLO TORME | `ALT-SHIFT-F11` | /cast Warlords Torment |
| BLOODLET | `ALT-SHIFT-F12` | /cast Bloodletting |
| IMPRO SLAM | `CTRL-ALT-SHIFT-F1` | /cast Improved Slam |
| MERCI BONEG | `CTRL-ALT-SHIFT-F2` | /cast Merciless Bonegrinder |
| STREN ARMS | `CTRL-ALT-SHIFT-F3` | /cast Strengthof Arms |
| EXECU PRECI | `CTRL-ALT-SHIFT-F4` | /cast Executioners Precision |
| JUGGERNA | `CTRL-ALT-SHIFT-F5` | /cast Juggernaut |
| FIERC FOLLO | `CTRL-ALT-SHIFT-F6` | /cast Fierce Followthrough |
| SLAYE DOMIN | `CTRL-ALT-SHIFT-F7` | /cast Slayers Dominance |
| PUMMEL | `CTRL-ALT-SHIFT-F8` | /cast Pummel |
| SEETHE | `CTRL-ALT-SHIFT-F9` | /cast Seethe |
| OVERWATC | `CTRL-ALT-SHIFT-F10` | /cast Overwatch |
| SHATT THROW | `CTRL-ALT-SHIFT-F11` | /cast Shattering Throw |
| ENDUR RAGE | `CTRL-ALT-SHIFT-F12` | /cast Enduring Rage |
| BLOODRAG | `CTRL-NUMPAD1` | /cast Bloodrage |
| DEATH WISH | `CTRL-NUMPAD2` | /cast Death Wish |
| DEMOLITI | `CTRL-NUMPAD3` | /cast Demolition |
| WAR BANNE | `CTRL-NUMPAD4` | /cast War Banner |
| DREADNAU | `CTRL-NUMPAD5` | /cast Dreadnaught |
| ANGER MANAG | `CTRL-NUMPAD6` | /cast Anger Management |
| IMPRO SWEEP | `CTRL-NUMPAD7` | /cast Improved Sweeping Strikes |
| SHARP BLADE2 | `CTRL-NUMPAD8` | /cast Sharpened Blades |
| BERSE RAGE | `CTRL-NUMPAD9` | /cast Berserker Rage |
| VICTO RUSH | `CTRL-NUMPAD0` | /cast Victory Rush |
| FROZE BINDS | `ALT-NUMPAD1` | /cast Frozen Binds |
| SANGUINE | `ALT-NUMPAD2` | /cast Sanguine |
| SATED | `ALT-NUMPAD3` | /cast Sated |
| SBA | `ALT-NUMPAD4` | /cast SBA |
| BLESS OF | `ALT-NUMPAD5` | /cast Blessing of Protection |
| DARK PACT | `ALT-NUMPAD6` | /cast Dark Pact |
| COMBUSTI | `ALT-NUMPAD7` | /cast Combustion |
| ICY VEINS | `ALT-NUMPAD8` | /cast Icy Veins |
| ALTER TIME | `ALT-NUMPAD9` | /cast Alter Time |
| ARCAN POWER | `ALT-NUMPAD0` | /cast Arcane Power |
| DIVIN FAVOR | `CTRL-ALT-NUMPAD1` | /cast Divine Favor |
| BLESS OF2 | `CTRL-ALT-NUMPAD2` | /cast Blessing of Freedom |
| POWER INFUS | `CTRL-ALT-NUMPAD3` | /cast Power Infusion |
| SURVI TACTI | `CTRL-ALT-NUMPAD4` | /cast Survival Tactics |
| CLOAK OF | `CTRL-ALT-NUMPAD5` | /cast Cloak of Shadows |
| REFLECT2 | `CTRL-ALT-NUMPAD6` | /cast Reflect |
| DEVOU PLAGU | `CTRL-ALT-NUMPAD7` | /cast Devouring Plague |
| ASPEC OF | `CTRL-ALT-NUMPAD8` | /cast Aspect of the Turtle |
| DIVIN SHIEL | `CTRL-ALT-NUMPAD9` | /cast Divine Shield |
| ICE BLOCK | `CTRL-ALT-NUMPAD0` | /cast Ice Block |
| SLAUGHTE | `CTRL-SHIFT-NUMPAD1` | /cast Slaughterhouse |
| DEATH SENTE | `CTRL-SHIFT-NUMPAD2` | /cast Death Sentence |
| BATTL TRANC | `CTRL-SHIFT-NUMPAD3` | /cast Battle Trance |
| BARBARIA | `CTRL-SHIFT-NUMPAD4` | /cast Barbarian |
