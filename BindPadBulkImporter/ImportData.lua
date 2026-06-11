-- Generated from remade GGL config.
BindPadBulkImporterDataText = [==[
#bindpad

#general

[GEN TARGETMO]
@bind CTRL-1
/target mouseover

[GEN TARGETEN]
@bind CTRL-2
/targetenemy

[GEN TARGETLA]
@bind CTRL-3
/targetlasttarget

[GEN MACRO A1 TGT]
@bind CTRL-4
/target arena1

[GEN MACRO A2 TGT]
@bind CTRL-5
/target arena2

[GEN MACRO A3 TGT]
@bind CTRL-6
/target arena3

[GEN MACRO A4 TGT]
@bind CTRL-7
/target arena4

[GEN MACRO A5 TGT]
@bind CTRL-8
/target arena5

[GEN MACRO A1 FOC]
@bind CTRL-9
/focus arena1

[GEN MACRO A2 FOC]
@bind CTRL-0
/focus arena2

[GEN MACRO A3 FOC]
@bind CTRL-A
/focus arena3

[GEN MACRO A4 FOC]
@bind CTRL-B
/focus arena4

[GEN MACRO A5 FOC]
@bind CTRL-C
/focus arena5

[GEN MACRO P1 FOC]
@bind CTRL-D
/focus party1

[GEN MACRO P2 FOC]
@bind CTRL-E
/focus party2

[GEN MACRO P3 FOC]
@bind CTRL-F
/focus party3

[GEN MACRO P4 FOC]
@bind CTRL-G
/focus party4

[GEN PLAYER FOC]
@bind CTRL-H
/focus player

[GEN STOPCAST]
@bind CTRL-I
/stopcasting

[GEN STARTATT]
@bind CTRL-J
/startattack [@mouseover,harm][@targettarget,harm][]
/petattack [@mouseover,harm][]

[GEN TRINKET1]
@bind CTRL-K
/use 13

[GEN TRINKET2]
@bind CTRL-L
/use 14

[GEN HEALTHST]
@bind CTRL-M
/use Fel Healthstone
/use Demonic Healthstone
/use Master Healthstone
/use Major Healthstone
/use Greater Healthstone
/use Healthstone
/use Lesser Healthstone
/use Minor Healthstone

[GEN HEALINGP]
@bind CTRL-N
/use item:244849
/use item:244839
/use item:244838
/use item:244835
/use item:212318
/use item:211880
/use item:212944
/use item:212943
/use item:211879
/use item:212942
/use item:211878
/use item:191380
/use item:191379
/use item:191378
/use item:187802
/use item:171267

[GEN WHIPP ROOT]
@bind CTRL-O
/use item:11951

[GEN SBA]
@bind CTRL-P
/cast Single-Button Assistant

#character

[START SECON]
@bind CTRL-Q
/cast START Secondary Rotation

[SWAPWEAP]
@bind CTRL-R
/stopcasting
/equipslot [noworn:shield] 16 one-main-hand
/equipslot [noworn:shield] 17 shield
/equip two-hander

Macro for swap between dual one hand to shield+one hand:
/stopcasting
/equipslot [noworn:shield] 16 one-main-hand
/equipslot [noworn:shield] 17 shield
/equipslot [worn:shield,noworn:two-hand] 16 one-main-hand
/equipslot [worn:shield] 17 one-off-hand
Note: When making this macro you'll need to replace one-hander, shield, and two-hander with the names of the weapons that your character is specifically using. For instance, if you were using Obsidian Edged Blade you would write Obsidian Edged Blade instead of two-hander
[shield] must be localized to your native language too!!!
 IconID: 132996, spellID: 20219

[3->4] meta slots

[BATTL SHOUT]
@bind CTRL-S
/startattack
/cast Battle Shout

[BERSE ROAR]
@bind CTRL-T
/cast Berserker Roar
/cast Berserker Shout
/cast Berserker Rage

[CHARGE]
@bind CTRL-U
/startattack
/cast [@mouseover,harm][]Charge

[CHARGE A1]
@bind CTRL-V
/cast [@arena1]Charge

[CHARGE A2]
@bind CTRL-W
/cast [@arena2]Charge

[CHARGE A3]
@bind CTRL-X
/cast [@arena3]Charge

[CHARGE A4]
@bind CTRL-Y
/cast [@arena4]Charge

[CHARGE A5]
@bind CTRL-Z
/cast [@arena5]Charge

[EXE]
@bind ALT-1
/cast Execute

[HAM]
@bind ALT-2
/cast Hamstring

[HEROI THROW]
@bind ALT-3
/cast Heroic Throw

[INT]
@bind ALT-4
/stopcasting
/cast [@mouseover,harm][]Pummel

[INT FOC]
@bind ALT-5
/stopcasting
/cast [@focus]Pummel

[INT A1]
@bind ALT-6
/stopcasting
/cast [@arena1]Pummel
/cast [@arena1]Hamstring
/cast [@arena1]Titanic Throw
/cast [@arena1]Heroic Throw

[INT A2]
@bind ALT-7
/stopcasting
/cast [@arena2]Pummel
/cast [@arena2]Hamstring
/cast [@arena2]Titanic Throw
/cast [@arena2]Heroic Throw

[INT A3]
@bind ALT-8
/stopcasting
/cast [@arena3]Pummel
/cast [@arena3]Hamstring
/cast [@arena3]Titanic Throw
/cast [@arena3]Heroic Throw

[INT A4]
@bind ALT-9
/stopcasting
/cast [@arena4]Pummel
/cast [@arena4]Hamstring
/cast [@arena4]Titanic Throw
/cast [@arena4]Heroic Throw

[INT A5]
@bind ALT-0
/stopcasting
/cast [@arena5]Pummel
/cast [@arena5]Hamstring
/cast [@arena5]Titanic Throw
/cast [@arena5]Heroic Throw

[SHIEL BLOCK]
@bind ALT-A
/startattack
/cast Shield Block

[SHIELD]
@bind ALT-B
/cast Shield Slam

[SLAM]
@bind ALT-C
/cast Slam

[TAUNT]
@bind ALT-D
/cast [@mouseover,harm][]Oppressor
/cast [@mouseover,harm][]Taunt

[TAUNT PETS]
@bind ALT-E
/stopcasting
/cast [@arenapet1,harm]Oppressor
/cast [@arenapet2,harm]Oppressor
/cast [@arenapet3,harm]Oppressor
/cast [@arenapet4,harm]Oppressor
/cast [@arenapet5,harm]Oppressor
/cast [@arenapet1,harm]Taunt
/cast [@arenapet2,harm]Taunt
/cast [@arenapet3,harm]Taunt
/cast [@arenapet4,harm]Taunt
/cast [@arenapet5,harm]Taunt

[TAUNT U1]
@bind ALT-F
/stopcasting
/cast [@raidpet1,harm][@raid1,harm][@partypet1,harm][@party1,harm][@arenapet1,harm][@arena1]Oppressor
/cast [@raidpet1,harm][@raid1,harm][@partypet1,harm][@party1,harm][@arenapet1,harm][@arena1]Taunt

[TAUNT U2]
@bind ALT-G
/stopcasting
/cast [@raidpet2,harm][@raid2,harm][@partypet2,harm][@party2,harm][@arenapet2,harm][@arena2]Oppressor
/cast [@raidpet2,harm][@raid2,harm][@partypet2,harm][@party2,harm][@arenapet2,harm][@arena2]Taunt

[TAUNT U3]
@bind ALT-H
/stopcasting
/cast [@raidpet3,harm][@raid3,harm][@partypet3,harm][@party3,harm][@arenapet3,harm][@arena3]Oppressor
/cast [@raidpet3,harm][@raid3,harm][@partypet3,harm][@party3,harm][@arenapet3,harm][@arena3]Taunt

[TAUNT U4]
@bind ALT-I
/stopcasting
/cast [@raidpet4,harm][@raid4,harm][@partypet4,harm][@party4,harm][@arenapet4,harm][@arena4]Oppressor
/cast [@raidpet4,harm][@raid4,harm][@partypet4,harm][@party4,harm][@arenapet4,harm][@arena4]Taunt

[TAUNT U5]
@bind ALT-J
/stopcasting
/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Oppressor
/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Taunt

[IMPEN VICTO]
@bind ALT-K
/cast Impending Victory
/cast Victory Rush

[WHIRL]
@bind ALT-L
/cast Whirlwind

[BATTL STANC]
@bind ALT-M
/cast Battle Stance

[DEFEN STANC]
@bind ALT-N
/cast Defensive Stance

[INTERVEN]
@bind ALT-O
/stopcasting
/cast [@mouseover,help][@focus,help][]Intervene

[INTERVEN M1]
@bind ALT-P
/run GetLOS(UnitExists('raid1') and 'raid1' or 'party1')
/cast [@raid1,exists][@party1,exists]Intervene

[INTERVEN M2]
@bind ALT-Q
/run GetLOS(UnitExists('raid2') and 'raid2' or 'party2')
/cast [@raid2,exists][@party2,exists]Intervene

[INTERVEN M3]
@bind ALT-R
/run GetLOS(UnitExists('raid3') and 'raid3' or 'party3')
/cast [@raid3,exists][@party3,exists]Intervene

[INTERVEN M4]
@bind ALT-S
/run GetLOS(UnitExists('raid4') and 'raid4' or 'party4')
/cast [@raid4,exists][@party4,exists]Intervene

[INTERVEN M5]
@bind ALT-T
/run GetLOS(UnitExists('raid5') and 'raid5' or 'player')
/cast [@raid5,exists][@player,exists]Intervene

[HEROI LEAP]
@bind ALT-U
/cast Heroic Leap

[STORM]
@bind ALT-V
/stopcasting
/cast [@mouseover,harm][]Storm Bolt

[STORM FOC]
@bind ALT-W
/stopcasting
/cast [@focus]Storm Bolt

[STORM A1]
@bind ALT-X
/stopcasting
/cast [@arena1]Storm Bolt

[STORM A2]
@bind ALT-Y
/stopcasting
/cast [@arena2]Storm Bolt

[STORM A3]
@bind ALT-Z
/stopcasting
/cast [@arena3]Storm Bolt

[STORM A4]
@bind CTRL-ALT-1
/stopcasting
/cast [@arena4]Storm Bolt

[STORM A5]
@bind CTRL-ALT-2
/stopcasting
/cast [@arena5]Storm Bolt

[INTIM]
@bind CTRL-ALT-3
/stopattack
/cast [@mouseover,harm][]Intimidating Shout

[INTIM A1]
@bind CTRL-ALT-4
/cast [@arena1]Intimidating Shout

[INTIM A2]
@bind CTRL-ALT-5
/cast [@arena2]Intimidating Shout

[INTIM A3]
@bind CTRL-ALT-6
/cast [@arena3]Intimidating Shout

[INTIM A4]
@bind CTRL-ALT-7
/cast [@arena4]Intimidating Shout

[INTIM A5]
@bind CTRL-ALT-8
/cast [@arena5]Intimidating Shout

[THUND CLAP]
@bind CTRL-ALT-9
/cast Thunder Clap

[REFLECT]
@bind CTRL-ALT-0
/startattack
/stopcasting
/cast Spell Reflection

[RALLY CRY]
@bind CTRL-ALT-A
/startattack
/cast Rallying Cry

[SHOCKWAV]
@bind CTRL-ALT-B
/cast Shockwave

[BITTE IMMUN]
@bind CTRL-ALT-C
/cast Bitter Immunity

[WRECK THROW]
@bind CTRL-ALT-D
/cast Wrecking Throw
/cast Shattering Throw

[PIERC HOWL]
@bind CTRL-ALT-E
/cast Piercing Howl

[THUND ROAR]
@bind CTRL-ALT-F
/cast Thunderous Roar

[AVATAR]
@bind CTRL-ALT-G
/startattack
/cast Avatar

[CHAMP SPEAR]
@bind CTRL-ALT-H
/cast [combat,@player][]Champion's Spear

[SWEEP STRIK]
@bind CTRL-ALT-I
/cast Sweeping Strikes

[CLEAVE]
@bind CTRL-ALT-J
/cast Cleave

[DEMOLISH]
@bind CTRL-ALT-K
/cast Demolish

[DIE BY]
@bind CTRL-ALT-L
/cast Die by the Sword

[IGNOR PAIN]
@bind CTRL-ALT-M
/startattack
/cast Ignore Pain

[MORTAL]
@bind CTRL-ALT-N
/cast Mortal Strike

[OVER]
@bind CTRL-ALT-O
/cast Overpower

[BLADE]
@bind CTRL-ALT-P
/cast Bladestorm
/cast [combat,@player][]Ravager

[REND]
@bind CTRL-ALT-Q
/cast Rend

[REND A1]
@bind CTRL-ALT-R
/cast [@arena1]Rend

[REND A2]
@bind CTRL-ALT-S
/cast [@arena2]Rend

[REND A3]
@bind CTRL-ALT-T
/cast [@arena3]Rend

[REND A4]
@bind CTRL-ALT-U
/cast [@arena4]Rend

[REND A5]
@bind CTRL-ALT-V
/cast [@arena5]Rend

[SKULLSPL]
@bind CTRL-ALT-W
/cast Skullsplitter

[WARBR]
@bind CTRL-ALT-X
/cast Warbreaker
/cast Colossus Smash

[DISARM]
@bind CTRL-ALT-Y
/stopcasting
/cast [@mouseover,harm][]Disarm

[DISARM A1]
@bind CTRL-ALT-Z
/stopcasting
/cast [@arena1]Disarm

[DISARM A2]
@bind CTRL-SHIFT-1
/stopcasting
/cast [@arena2]Disarm

[DISARM A3]
@bind CTRL-SHIFT-2
/stopcasting
/cast [@arena3]Disarm

[DISARM A4]
@bind CTRL-SHIFT-3
/stopcasting
/cast [@arena4]Disarm

[DISARM A5]
@bind CTRL-SHIFT-4
/stopcasting
/cast [@arena5]Disarm

[DUEL]
@bind CTRL-SHIFT-5
/startattack
/cast Duel

[DUEL A1]
@bind CTRL-SHIFT-6
/cast [@arena1]Duel

[DUEL A2]
@bind CTRL-SHIFT-7
/cast [@arena2]Duel

[DUEL A3]
@bind CTRL-SHIFT-8
/cast [@arena3]Duel

[DUEL A4]
@bind CTRL-SHIFT-9
/cast [@arena4]Duel

[DUEL A5]
@bind CTRL-SHIFT-0
/cast [@arena5]Duel

[SHARP BLADE]
@bind CTRL-SHIFT-A
/startattack
/cast Sharpen Blade

[HUMAN RACIA]
@bind CTRL-SHIFT-B
/cast Human Racial

[STONEFOR]
@bind CTRL-SHIFT-C
/cast Stoneform

[SHADOWME]
@bind CTRL-SHIFT-D
/cast Shadowmeld

[ESCAP ARTIS]
@bind CTRL-SHIFT-E
/cast Escape Artist

[GIFT OF]
@bind CTRL-SHIFT-F
/cast [@mouseover,help][@focus,help][]Gift of the Naaru

[DARKFLIG]
@bind CTRL-SHIFT-G
/cast Darkflight

[BLOOD FURY]
@bind CTRL-SHIFT-H
/cast Blood Fury

[WILL OF]
@bind CTRL-SHIFT-I
/cast Will of the Forsaken

[WAR STOMP]
@bind CTRL-SHIFT-J
/cast War Stomp

[BERSERKI]
@bind CTRL-SHIFT-K
/cast Berserking

[ARCAN TORRE]
@bind CTRL-SHIFT-L
/cast Arcane Torrent

[ROCKE JUMP]
@bind CTRL-SHIFT-M
/cast Rocket Jump

[ROCKE BARRA]
@bind CTRL-SHIFT-N
/cast Rocket Barrage

[QUAKI PALM]
@bind CTRL-SHIFT-O
/cast [@mouseover,harm][]Quaking Palm

[SPATI RIFT]
@bind CTRL-SHIFT-P
/cast Spatial Rift

[LIGHT JUDGM]
@bind CTRL-SHIFT-Q
/cast Light's Judgment

[FIREBLOO]
@bind CTRL-SHIFT-R
/cast Fireblood

[ARCAN PULSE]
@bind CTRL-SHIFT-S
/cast Arcane Pulse

[BULL RUSH]
@bind CTRL-SHIFT-T
/cast Bull Rush

[ANCES CALL]
@bind CTRL-SHIFT-U
/cast Ancestral Call

[HAYMAKER]
@bind CTRL-SHIFT-V
/cast [@mouseover,harm][]Haymaker

[REGENERA]
@bind CTRL-SHIFT-W
/cast Regeneratin

[BAG OF]
@bind CTRL-SHIFT-X
/cast [nocombat]Rummage Your Bag;[combat,@mouseover,exists][combat]Bag of Tricks

[HYPER ORGAN]
@bind CTRL-SHIFT-Y
/cast Hyper Organic Light Originator

[AZERI SURGE]
@bind CTRL-SHIFT-Z
/cast Azerite Surge

[ROTATION]
@bind ALT-SHIFT-1
/cast Rotation

[MACRO M1 TGT]
@bind ALT-SHIFT-2
/focus [mod:ctrl]raidpet1; [mod:alt]party1; raid1

Note: Don't use ALT CTRL to bind this key!

[MACRO M2 TGT]
@bind ALT-SHIFT-3
/focus [mod:ctrl]raidpet2; [mod:alt]party2; raid2

Note: Don't use ALT CTRL to bind this key!

[MACRO M3 TGT]
@bind ALT-SHIFT-4
/focus [mod:ctrl]raidpet3; [mod:alt]party3; raid3

Note: Don't use ALT CTRL to bind this key!

[MACRO M4 TGT]
@bind ALT-SHIFT-5
/focus [mod:ctrl]raidpet4; [mod:alt]party4; raid4

Note: Don't use ALT CTRL to bind this key!

[MACRO M5 TGT]
@bind ALT-SHIFT-6
/focus [mod:ctrl]raidpet5; [mod:alt]player; raid5

Note: Don't use ALT CTRL to bind this key!

[MEMBER6 TGT]
@bind ALT-SHIFT-7
/focus [mod:ctrl]raidpet6; [mod:alt]focus; raid6

Note: Don't use ALT CTRL to bind this key!

[MEMBER7 TGT]
@bind ALT-SHIFT-8
/focus [mod:ctrl]raidpet7; [mod:alt]partypet1; raid7

Note: Don't use ALT CTRL to bind this key!

[MEMBER8 TGT]
@bind ALT-SHIFT-9
/focus [mod:ctrl]raidpet8; [mod:alt]partypet2; raid8

Note: Don't use ALT CTRL to bind this key!

[MEMBER9 TGT]
@bind ALT-SHIFT-0
/focus [mod:ctrl]raidpet9; [mod:alt]partypet3; raid9

Note: Don't use ALT CTRL to bind this key!

[MEMBER10 TGT]
@bind ALT-SHIFT-A
/focus [mod:ctrl]raidpet10; [mod:alt]partypet4; raid10

Note: Don't use ALT CTRL to bind this key!

[MEMBER11 TGT]
@bind ALT-SHIFT-B
/focus [mod:ctrl]raidpet11; raid11

Note: Don't use CTRL to bind this key!

[MEMBER12 TGT]
@bind ALT-SHIFT-C
/focus [mod:ctrl]raidpet12; raid12

Note: Don't use CTRL to bind this key!

[MEMBER13 TGT]
@bind ALT-SHIFT-D
/focus [mod:ctrl]raidpet13; raid13

Note: Don't use CTRL to bind this key!

[MEMBER14 TGT]
@bind ALT-SHIFT-E
/focus [mod:ctrl]raidpet14; raid14

Note: Don't use CTRL to bind this key!

[MEMBER15 TGT]
@bind ALT-SHIFT-F
/focus [mod:ctrl]raidpet15; raid15

Note: Don't use CTRL to bind this key!

[MEMBER16 TGT]
@bind ALT-SHIFT-G
/focus [mod:ctrl]raidpet16; raid16

Note: Don't use CTRL to bind this key!

[MEMBER17 TGT]
@bind ALT-SHIFT-H
/focus [mod:ctrl]raidpet17; raid17

Note: Don't use CTRL to bind this key!

[MEMBER18 TGT]
@bind ALT-SHIFT-I
/focus [mod:ctrl]raidpet18; raid18

Note: Don't use CTRL to bind this key!

[MEMBER19 TGT]
@bind ALT-SHIFT-J
/focus [mod:ctrl]raidpet19; raid19

Note: Don't use CTRL to bind this key!

[MEMBER20 TGT]
@bind ALT-SHIFT-K
/focus [mod:ctrl]raidpet20; raid20

Note: Don't use CTRL to bind this key!

[MEMBER21 TGT]
@bind ALT-SHIFT-L
/focus [mod:ctrl]raidpet21; raid21

Note: Don't use CTRL to bind this key!

[MEMBER22 TGT]
@bind ALT-SHIFT-M
/focus [mod:ctrl]raidpet22; raid22

Note: Don't use CTRL to bind this key!

[MEMBER23 TGT]
@bind ALT-SHIFT-N
/focus [mod:ctrl]raidpet23; raid23

Note: Don't use CTRL to bind this key!

[MEMBER24 TGT]
@bind ALT-SHIFT-O
/focus [mod:ctrl]raidpet24; raid24

Note: Don't use CTRL to bind this key!

[MEMBER25 TGT]
@bind ALT-SHIFT-P
/focus [mod:ctrl]raidpet25; raid25

Note: Don't use CTRL to bind this key!

[MEMBER26 TGT]
@bind ALT-SHIFT-Q
/focus [mod:ctrl]raidpet26; raid26

Note: Don't use CTRL to bind this key!

[MEMBER27 TGT]
@bind ALT-SHIFT-R
/focus [mod:ctrl]raidpet27; raid27

Note: Don't use CTRL to bind this key!

[MEMBER28 TGT]
@bind ALT-SHIFT-S
/focus [mod:ctrl]raidpet28; raid28

Note: Don't use CTRL to bind this key!

[MEMBER29 TGT]
@bind ALT-SHIFT-T
/focus [mod:ctrl]raidpet29; raid29

Note: Don't use CTRL to bind this key!

[MEMBER30 TGT]
@bind ALT-SHIFT-U
/focus [mod:ctrl]raidpet30; raid30

Note: Don't use CTRL to bind this key!

[MEMBER31 TGT]
@bind ALT-SHIFT-V
/focus [mod:ctrl]raidpet31; raid31

Note: Don't use CTRL to bind this key!

[MEMBER32 TGT]
@bind ALT-SHIFT-W
/focus [mod:ctrl]raidpet32; raid32

Note: Don't use CTRL to bind this key!

[MEMBER33 TGT]
@bind ALT-SHIFT-X
/focus [mod:ctrl]raidpet33; raid33

Note: Don't use CTRL to bind this key!

[MEMBER34 TGT]
@bind ALT-SHIFT-Y
/focus [mod:ctrl]raidpet34; raid34

Note: Don't use CTRL to bind this key!

[MEMBER35 TGT]
@bind ALT-SHIFT-Z
/focus [mod:ctrl]raidpet35; raid35

Note: Don't use CTRL to bind this key!

[MEMBER36 TGT]
@bind CTRL-ALT-SHIFT-1
/focus [mod:ctrl]raidpet36; raid36

Note: Don't use CTRL to bind this key!

[MEMBER37 TGT]
@bind CTRL-ALT-SHIFT-2
/focus [mod:ctrl]raidpet37; raid37

Note: Don't use CTRL to bind this key!

[MEMBER38 TGT]
@bind CTRL-ALT-SHIFT-3
/focus [mod:ctrl]raidpet38; raid38

Note: Don't use CTRL to bind this key!

[MEMBER39 TGT]
@bind CTRL-ALT-SHIFT-4
/focus [mod:ctrl]raidpet39; raid39

Note: Don't use CTRL to bind this key!

[MEMBER40 TGT]
@bind CTRL-ALT-SHIFT-5
/focus [mod:ctrl]raidpet40; raid40

Note: Don't use CTRL to bind this key!

[SECON ROTAT]
@bind CTRL-ALT-SHIFT-6
/cast Secondary Rotation

[TRINK ROTAT]
@bind CTRL-ALT-SHIFT-7
/cast Trinket Rotation

[ANTIF CC]
@bind CTRL-ALT-SHIFT-8
/cast AntiFake CC

[ANTIF CC FOC]
@bind CTRL-ALT-SHIFT-9
/cast AntiFake CC Focus

[ANTIF INTER]
@bind CTRL-ALT-SHIFT-0
/cast AntiFake Interrupt

[ANTIF INTER FOC]
@bind CTRL-ALT-SHIFT-A
/cast AntiFake Interrupt Focus

[ANTIF CC2]
@bind CTRL-ALT-SHIFT-B
/cast AntiFake CC2

[ANTIF CC2 FOC]
@bind CTRL-ALT-SHIFT-C
/cast AntiFake CC2 Focus

[POTION]
@bind CTRL-ALT-SHIFT-D
/cast Potion

[UNIVERSA]
@bind CTRL-ALT-SHIFT-E
/cast Universal1

[UNIVERSA2]
@bind CTRL-ALT-SHIFT-F
/cast Universal2

[UNIVERSA3]
@bind CTRL-ALT-SHIFT-G
/cast Universal3

[UNIVERSA4]
@bind CTRL-ALT-SHIFT-H
/cast Universal4

[UNIVERSA5]
@bind CTRL-ALT-SHIFT-I
/cast Universal5

[UNIVERSA6]
@bind CTRL-ALT-SHIFT-J
/cast Universal6

[UNIVERSA7]
@bind CTRL-ALT-SHIFT-K
/cast Universal7

[UNIVERSA8]
@bind CTRL-ALT-SHIFT-L
/cast Universal8

[UNIVERSA9]
@bind CTRL-ALT-SHIFT-M
/cast Universal9

[UNIVERSA10]
@bind CTRL-ALT-SHIFT-N
/cast Universal10

[UNIVERSA U1]
@bind CTRL-ALT-SHIFT-O
/cast Universal1 Unit1

[UNIVERSA U2]
@bind CTRL-ALT-SHIFT-P
/cast Universal1 Unit2

[UNIVERSA U3]
@bind CTRL-ALT-SHIFT-Q
/cast Universal1 Unit3

[UNIVERSA U4]
@bind CTRL-ALT-SHIFT-R
/cast Universal1 Unit4

[UNIVERSA U5]
@bind CTRL-ALT-SHIFT-S
/cast Universal1 Unit5

[UNIVERSA U12]
@bind CTRL-ALT-SHIFT-T
/cast Universal2 Unit1

[UNIVERSA U22]
@bind CTRL-ALT-SHIFT-U
/cast Universal2 Unit2

[UNIVERSA U32]
@bind CTRL-ALT-SHIFT-V
/cast Universal2 Unit3

[UNIVERSA U42]
@bind CTRL-ALT-SHIFT-W
/cast Universal2 Unit4

[UNIVERSA U52]
@bind CTRL-ALT-SHIFT-X
/cast Universal2 Unit5

[UNIVERSA U13]
@bind CTRL-ALT-SHIFT-Y
/cast Universal3 Unit1

[UNIVERSA U23]
@bind CTRL-ALT-SHIFT-Z
/cast Universal3 Unit2

[UNIVERSA U33]
@bind CTRL-F1
/cast Universal3 Unit3

[UNIVERSA U43]
@bind CTRL-F2
/cast Universal3 Unit4

[UNIVERSA U53]
@bind CTRL-F3
/cast Universal3 Unit5

[UNIVERSA U14]
@bind CTRL-F4
/cast Universal4 Unit1

[UNIVERSA U24]
@bind CTRL-F5
/cast Universal4 Unit2

[UNIVERSA U34]
@bind CTRL-F6
/cast Universal4 Unit3

[UNIVERSA U44]
@bind CTRL-F7
/cast Universal4 Unit4

[UNIVERSA U54]
@bind CTRL-F8
/cast Universal4 Unit5

[UNIVERSA U15]
@bind CTRL-F9
/cast Universal5 Unit1

[UNIVERSA U25]
@bind CTRL-F10
/cast Universal5 Unit2

[UNIVERSA U35]
@bind CTRL-F11
/cast Universal5 Unit3

[UNIVERSA U45]
@bind CTRL-F12
/cast Universal5 Unit4

[UNIVERSA U55]
@bind ALT-F1
/cast Universal5 Unit5

[UNIVERSA U16]
@bind ALT-F2
/cast Universal6 Unit1

[UNIVERSA U26]
@bind ALT-F3
/cast Universal6 Unit2

[UNIVERSA U36]
@bind ALT-F4
/cast Universal6 Unit3

[UNIVERSA U46]
@bind ALT-F5
/cast Universal6 Unit4

[UNIVERSA U56]
@bind ALT-F6
/cast Universal6 Unit5

[UNIVERSA U17]
@bind ALT-F7
/cast Universal7 Unit1

[UNIVERSA U27]
@bind ALT-F8
/cast Universal7 Unit2

[UNIVERSA U37]
@bind ALT-F9
/cast Universal7 Unit3

[UNIVERSA U47]
@bind ALT-F10
/cast Universal7 Unit4

[UNIVERSA U57]
@bind ALT-F11
/cast Universal7 Unit5

[UNIVERSA U18]
@bind ALT-F12
/cast Universal8 Unit1

[UNIVERSA U28]
@bind CTRL-ALT-F1
/cast Universal8 Unit2

[UNIVERSA U38]
@bind CTRL-ALT-F2
/cast Universal8 Unit3

[UNIVERSA U48]
@bind CTRL-ALT-F3
/cast Universal8 Unit4

[UNIVERSA U58]
@bind CTRL-ALT-F4
/cast Universal8 Unit5

[UNIVERSA U19]
@bind CTRL-ALT-F5
/cast Universal9 Unit1

[UNIVERSA U29]
@bind CTRL-ALT-F6
/cast Universal9 Unit2

[UNIVERSA U39]
@bind CTRL-ALT-F7
/cast Universal9 Unit3

[UNIVERSA U49]
@bind CTRL-ALT-F8
/cast Universal9 Unit4

[UNIVERSA U59]
@bind CTRL-ALT-F9
/cast Universal9 Unit5

[UNIVERSA U110]
@bind CTRL-ALT-F10
/cast Universal10 Unit1

[UNIVERSA U210]
@bind CTRL-ALT-F11
/cast Universal10 Unit2

[UNIVERSA U310]
@bind CTRL-ALT-F12
/cast Universal10 Unit3

[UNIVERSA U410]
@bind CTRL-SHIFT-F1
/cast Universal10 Unit4

[UNIVERSA U510]
@bind CTRL-SHIFT-F2
/cast Universal10 Unit5

[EVERY MAN]
@bind CTRL-SHIFT-F3
/cast Every Man for Himself

[DARK FLIGH]
@bind CTRL-SHIFT-F4
/cast Dark Flight

[RAVAGER]
@bind CTRL-SHIFT-F5
/cast Ravager

[WARBREAK]
@bind CTRL-SHIFT-F6
/cast Warbreaker

[COLOSSUS]
@bind CTRL-SHIFT-F7
/cast Colossus Smash

[TEST OF]
@bind CTRL-SHIFT-F8
/cast Test of Might

[BLADESTO]
@bind CTRL-SHIFT-F9
/cast Bladestorm

[TIDEO BLOOD]
@bind CTRL-SHIFT-F10
/cast Tideof Blood

[BATTLELO]
@bind CTRL-SHIFT-F11
/cast Battlelord

[UNHINGED]
@bind CTRL-SHIFT-F12
/cast Unhinged

[FERVO BATTL]
@bind ALT-SHIFT-F1
/cast Fervorof Battle

[HEROI STRIK]
@bind ALT-SHIFT-F2
/cast Heroic Strike

[IMPEN VICTO2]
@bind ALT-SHIFT-F3
/cast Impending Victory

[WRECK THROW2]
@bind ALT-SHIFT-F4
/cast Wrecking Throw

[MASSACRE]
@bind ALT-SHIFT-F5
/cast Massacre

[SONIC BOOM]
@bind ALT-SHIFT-F6
/cast Sonic Boom

[BLOOD THUND]
@bind ALT-SHIFT-F7
/cast Bloodand Thunder

[BLADE TORME]
@bind ALT-SHIFT-F8
/cast Blademasters Torment

[STORM SWORD]
@bind ALT-SHIFT-F9
/cast Stormof Swords

[CRUSH FORCE]
@bind ALT-SHIFT-F10
/cast Crushing Force

[WARLO TORME]
@bind ALT-SHIFT-F11
/cast Warlords Torment

[BLOODLET]
@bind ALT-SHIFT-F12
/cast Bloodletting

[IMPRO SLAM]
@bind CTRL-ALT-SHIFT-F1
/cast Improved Slam

[MERCI BONEG]
@bind CTRL-ALT-SHIFT-F2
/cast Merciless Bonegrinder

[STREN ARMS]
@bind CTRL-ALT-SHIFT-F3
/cast Strengthof Arms

[EXECU PRECI]
@bind CTRL-ALT-SHIFT-F4
/cast Executioners Precision

[JUGGERNA]
@bind CTRL-ALT-SHIFT-F5
/cast Juggernaut

[FIERC FOLLO]
@bind CTRL-ALT-SHIFT-F6
/cast Fierce Followthrough

[SLAYE DOMIN]
@bind CTRL-ALT-SHIFT-F7
/cast Slayers Dominance

[PUMMEL]
@bind CTRL-ALT-SHIFT-F8
/cast Pummel

[SEETHE]
@bind CTRL-ALT-SHIFT-F9
/cast Seethe

[OVERWATC]
@bind CTRL-ALT-SHIFT-F10
/cast Overwatch

[SHATT THROW]
@bind CTRL-ALT-SHIFT-F11
/cast Shattering Throw

[ENDUR RAGE]
@bind CTRL-ALT-SHIFT-F12
/cast Enduring Rage

[BLOODRAG]
@bind CTRL-NUMPAD1
/cast Bloodrage

[DEATH WISH]
@bind CTRL-NUMPAD2
/cast Death Wish

[DEMOLITI]
@bind CTRL-NUMPAD3
/cast Demolition

[WAR BANNE]
@bind CTRL-NUMPAD4
/cast War Banner

[DREADNAU]
@bind CTRL-NUMPAD5
/cast Dreadnaught

[ANGER MANAG]
@bind CTRL-NUMPAD6
/cast Anger Management

[IMPRO SWEEP]
@bind CTRL-NUMPAD7
/cast Improved Sweeping Strikes

[SHARP BLADE2]
@bind CTRL-NUMPAD8
/cast Sharpened Blades

[BERSE RAGE]
@bind CTRL-NUMPAD9
/cast Berserker Rage

[VICTO RUSH]
@bind CTRL-NUMPAD0
/cast Victory Rush

[FROZE BINDS]
@bind ALT-NUMPAD1
/cast Frozen Binds

[SANGUINE]
@bind ALT-NUMPAD2
/cast Sanguine

[SATED]
@bind ALT-NUMPAD3
/cast Sated

[SBA]
@bind ALT-NUMPAD4
/cast SBA

[BLESS OF]
@bind ALT-NUMPAD5
/cast Blessing of Protection

[DARK PACT]
@bind ALT-NUMPAD6
/cast Dark Pact

[COMBUSTI]
@bind ALT-NUMPAD7
/cast Combustion

[ICY VEINS]
@bind ALT-NUMPAD8
/cast Icy Veins

[ALTER TIME]
@bind ALT-NUMPAD9
/cast Alter Time

[ARCAN POWER]
@bind ALT-NUMPAD0
/cast Arcane Power

[DIVIN FAVOR]
@bind CTRL-ALT-NUMPAD1
/cast Divine Favor

[BLESS OF2]
@bind CTRL-ALT-NUMPAD2
/cast Blessing of Freedom

[POWER INFUS]
@bind CTRL-ALT-NUMPAD3
/cast Power Infusion

[SURVI TACTI]
@bind CTRL-ALT-NUMPAD4
/cast Survival Tactics

[CLOAK OF]
@bind CTRL-ALT-NUMPAD5
/cast Cloak of Shadows

[REFLECT2]
@bind CTRL-ALT-NUMPAD6
/cast Reflect

[DEVOU PLAGU]
@bind CTRL-ALT-NUMPAD7
/cast Devouring Plague

[ASPEC OF]
@bind CTRL-ALT-NUMPAD8
/cast Aspect of the Turtle

[DIVIN SHIEL]
@bind CTRL-ALT-NUMPAD9
/cast Divine Shield

[ICE BLOCK]
@bind CTRL-ALT-NUMPAD0
/cast Ice Block

[SLAUGHTE]
@bind CTRL-SHIFT-NUMPAD1
/cast Slaughterhouse

[DEATH SENTE]
@bind CTRL-SHIFT-NUMPAD2
/cast Death Sentence

[BATTL TRANC]
@bind CTRL-SHIFT-NUMPAD3
/cast Battle Trance

[BARBARIA]
@bind CTRL-SHIFT-NUMPAD4
/cast Barbarian
]==]
