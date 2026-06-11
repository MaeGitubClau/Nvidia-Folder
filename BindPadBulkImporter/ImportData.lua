-- Generated from remade GGL config.
BindPadBulkImporterDataText = [==[
#bindpad

#general

[TargetMouseOver]
@bind CTRL-1
/target mouseover

[TargetEnemy]
@bind CTRL-2
/targetenemy

[TargetLastTarget]
@bind CTRL-3
/targetlasttarget

[Target Arena1]
@bind CTRL-4
/target arena1

[Target Arena2]
@bind CTRL-5
/target arena2

[Target Arena3]
@bind CTRL-6
/target arena3

[Target Arena4]
@bind CTRL-7
/target arena4

[Target Arena5]
@bind CTRL-8
/target arena5

[Focus Arena1]
@bind CTRL-9
/focus arena1

[Focus Arena2]
@bind CTRL-0
/focus arena2

[Focus Arena3]
@bind CTRL-A
/focus arena3

[Focus Arena4]
@bind CTRL-B
/focus arena4

[Focus Arena5]
@bind CTRL-C
/focus arena5

[Focus Party1]
@bind CTRL-D
/focus party1

[Focus Party2]
@bind CTRL-E
/focus party2

[Focus Party3]
@bind CTRL-F
/focus party3

[Focus Party4]
@bind CTRL-G
/focus party4

[Focus Player]
@bind CTRL-H
/focus player

[StopCasting]
@bind CTRL-I
/stopcasting

[StartAttack]
@bind CTRL-J
/startattack [@mouseover,harm][@targettarget,harm][]
/petattack [@mouseover,harm][]

[Trinket1]
@bind CTRL-K
/use 13

[Trinket2]
@bind CTRL-L
/use 14

[HealthStone]
@bind CTRL-M
/use Fel Healthstone
/use Demonic Healthstone
/use Master Healthstone
/use Major Healthstone
/use Greater Healthstone
/use Healthstone
/use Lesser Healthstone
/use Minor Healthstone

[HealingPotion]
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

[Whipper Root Tuber]
@bind CTRL-O
/use item:11951

[SBA]
@bind CTRL-P
/cast Single-Button Assistant

#character

[Arms - START Secondary Rotation]
@bind CTRL-Q
/cast START Secondary Rotation

[Arms - SwapWeapon]
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

[Arms - Battle Shout]
@bind CTRL-S
/startattack
/cast Battle Shout

[Arms - Berserker Roar | Berserker Shout | Berserker Rage]
@bind CTRL-T
/cast Berserker Roar
/cast Berserker Shout
/cast Berserker Rage

[Arms - Charge]
@bind CTRL-U
/startattack
/cast [@mouseover,harm][]Charge

[Arms - Charge Arena1]
@bind CTRL-V
/cast [@arena1]Charge

[Arms - Charge Arena2]
@bind CTRL-W
/cast [@arena2]Charge

[Arms - Charge Arena3]
@bind CTRL-X
/cast [@arena3]Charge

[Arms - Charge Arena4]
@bind CTRL-Y
/cast [@arena4]Charge

[Arms - Charge Arena5]
@bind CTRL-Z
/cast [@arena5]Charge

[Arms - Execute]
@bind ALT-1
/cast Execute

[Arms - Hamstring]
@bind ALT-2
/cast Hamstring

[Arms - Heroic Throw]
@bind ALT-3
/cast Heroic Throw

[Arms - Interrupt]
@bind ALT-4
/stopcasting
/cast [@mouseover,harm][]Pummel

[Arms - Interrupt Focus]
@bind ALT-5
/stopcasting
/cast [@focus]Pummel

[Arms - Interrupt Arena1]
@bind ALT-6
/stopcasting
/cast [@arena1]Pummel
/cast [@arena1]Hamstring
/cast [@arena1]Titanic Throw
/cast [@arena1]Heroic Throw

[Arms - Interrupt Arena2]
@bind ALT-7
/stopcasting
/cast [@arena2]Pummel
/cast [@arena2]Hamstring
/cast [@arena2]Titanic Throw
/cast [@arena2]Heroic Throw

[Arms - Interrupt Arena3]
@bind ALT-8
/stopcasting
/cast [@arena3]Pummel
/cast [@arena3]Hamstring
/cast [@arena3]Titanic Throw
/cast [@arena3]Heroic Throw

[Arms - Interrupt Arena4]
@bind ALT-9
/stopcasting
/cast [@arena4]Pummel
/cast [@arena4]Hamstring
/cast [@arena4]Titanic Throw
/cast [@arena4]Heroic Throw

[Arms - Interrupt Arena5]
@bind ALT-0
/stopcasting
/cast [@arena5]Pummel
/cast [@arena5]Hamstring
/cast [@arena5]Titanic Throw
/cast [@arena5]Heroic Throw

[Arms - Shield Block]
@bind ALT-A
/startattack
/cast Shield Block

[Arms - Shield Slam]
@bind ALT-B
/cast Shield Slam

[Arms - Slam]
@bind ALT-C
/cast Slam

[Arms - Taunt]
@bind ALT-D
/cast [@mouseover,harm][]Oppressor
/cast [@mouseover,harm][]Taunt

[Arms - Taunt Pets]
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

[Arms - Taunt Unit1]
@bind ALT-F
/stopcasting
/cast [@raidpet1,harm][@raid1,harm][@partypet1,harm][@party1,harm][@arenapet1,harm][@arena1]Oppressor
/cast [@raidpet1,harm][@raid1,harm][@partypet1,harm][@party1,harm][@arenapet1,harm][@arena1]Taunt

[Arms - Taunt Unit2]
@bind ALT-G
/stopcasting
/cast [@raidpet2,harm][@raid2,harm][@partypet2,harm][@party2,harm][@arenapet2,harm][@arena2]Oppressor
/cast [@raidpet2,harm][@raid2,harm][@partypet2,harm][@party2,harm][@arenapet2,harm][@arena2]Taunt

[Arms - Taunt Unit3]
@bind ALT-H
/stopcasting
/cast [@raidpet3,harm][@raid3,harm][@partypet3,harm][@party3,harm][@arenapet3,harm][@arena3]Oppressor
/cast [@raidpet3,harm][@raid3,harm][@partypet3,harm][@party3,harm][@arenapet3,harm][@arena3]Taunt

[Arms - Taunt Unit4]
@bind ALT-I
/stopcasting
/cast [@raidpet4,harm][@raid4,harm][@partypet4,harm][@party4,harm][@arenapet4,harm][@arena4]Oppressor
/cast [@raidpet4,harm][@raid4,harm][@partypet4,harm][@party4,harm][@arenapet4,harm][@arena4]Taunt

[Arms - Taunt Unit5]
@bind ALT-J
/stopcasting
/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Oppressor
/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Taunt

[Arms - Impending Victory | Victory Rush]
@bind ALT-K
/cast Impending Victory
/cast Victory Rush

[Arms - Whirlwind]
@bind ALT-L
/cast Whirlwind

[Arms - Battle Stance]
@bind ALT-M
/cast Battle Stance

[Arms - Defensive Stance]
@bind ALT-N
/cast Defensive Stance

[Arms - Intervene]
@bind ALT-O
/stopcasting
/cast [@mouseover,help][@focus,help][]Intervene

[Arms - Intervene Member1]
@bind ALT-P
/run GetLOS(UnitExists('raid1') and 'raid1' or 'party1')
/cast [@raid1,exists][@party1,exists]Intervene

[Arms - Intervene Member2]
@bind ALT-Q
/run GetLOS(UnitExists('raid2') and 'raid2' or 'party2')
/cast [@raid2,exists][@party2,exists]Intervene

[Arms - Intervene Member3]
@bind ALT-R
/run GetLOS(UnitExists('raid3') and 'raid3' or 'party3')
/cast [@raid3,exists][@party3,exists]Intervene

[Arms - Intervene Member4]
@bind ALT-S
/run GetLOS(UnitExists('raid4') and 'raid4' or 'party4')
/cast [@raid4,exists][@party4,exists]Intervene

[Arms - Intervene Member5]
@bind ALT-T
/run GetLOS(UnitExists('raid5') and 'raid5' or 'player')
/cast [@raid5,exists][@player,exists]Intervene

[Arms - Heroic Leap]
@bind ALT-U
/cast Heroic Leap

[Arms - Storm Bolt]
@bind ALT-V
/stopcasting
/cast [@mouseover,harm][]Storm Bolt

[Arms - Storm Bolt Focus]
@bind ALT-W
/stopcasting
/cast [@focus]Storm Bolt

[Arms - Storm Bolt Arena1]
@bind ALT-X
/stopcasting
/cast [@arena1]Storm Bolt

[Arms - Storm Bolt Arena2]
@bind ALT-Y
/stopcasting
/cast [@arena2]Storm Bolt

[Arms - Storm Bolt Arena3]
@bind ALT-Z
/stopcasting
/cast [@arena3]Storm Bolt

[Arms - Storm Bolt Arena4]
@bind CTRL-ALT-1
/stopcasting
/cast [@arena4]Storm Bolt

[Arms - Storm Bolt Arena5]
@bind CTRL-ALT-2
/stopcasting
/cast [@arena5]Storm Bolt

[Arms - Intimidating Shout]
@bind CTRL-ALT-3
/stopattack
/cast [@mouseover,harm][]Intimidating Shout

[Arms - Intimidating Shout Arena1]
@bind CTRL-ALT-4
/cast [@arena1]Intimidating Shout

[Arms - Intimidating Shout Arena2]
@bind CTRL-ALT-5
/cast [@arena2]Intimidating Shout

[Arms - Intimidating Shout Arena3]
@bind CTRL-ALT-6
/cast [@arena3]Intimidating Shout

[Arms - Intimidating Shout Arena4]
@bind CTRL-ALT-7
/cast [@arena4]Intimidating Shout

[Arms - Intimidating Shout Arena5]
@bind CTRL-ALT-8
/cast [@arena5]Intimidating Shout

[Arms - Thunder Clap]
@bind CTRL-ALT-9
/cast Thunder Clap

[Arms - Spell Reflection]
@bind CTRL-ALT-0
/startattack
/stopcasting
/cast Spell Reflection

[Arms - Rallying Cry]
@bind CTRL-ALT-A
/startattack
/cast Rallying Cry

[Arms - Shockwave]
@bind CTRL-ALT-B
/cast Shockwave

[Arms - Bitter Immunity]
@bind CTRL-ALT-C
/cast Bitter Immunity

[Arms - Wrecking Throw | Shattering Throw]
@bind CTRL-ALT-D
/cast Wrecking Throw
/cast Shattering Throw

[Arms - Piercing Howl]
@bind CTRL-ALT-E
/cast Piercing Howl

[Arms - Thunderous Roar]
@bind CTRL-ALT-F
/cast Thunderous Roar

[Arms - Avatar]
@bind CTRL-ALT-G
/startattack
/cast Avatar

[Arms - Champion's Spear]
@bind CTRL-ALT-H
/cast [combat,@player][]Champion's Spear

[Arms - Sweeping Strikes]
@bind CTRL-ALT-I
/cast Sweeping Strikes

[Arms - Cleave]
@bind CTRL-ALT-J
/cast Cleave

[Arms - Demolish]
@bind CTRL-ALT-K
/cast Demolish

[Arms - Die by the Sword]
@bind CTRL-ALT-L
/cast Die by the Sword

[Arms - Ignore Pain]
@bind CTRL-ALT-M
/startattack
/cast Ignore Pain

[Arms - Mortal Strike]
@bind CTRL-ALT-N
/cast Mortal Strike

[Arms - Overpower]
@bind CTRL-ALT-O
/cast Overpower

[Arms - Bladestorm | Ravager]
@bind CTRL-ALT-P
/cast Bladestorm
/cast [combat,@player][]Ravager

[Arms - Rend]
@bind CTRL-ALT-Q
/cast Rend

[Arms - Rend Arena1]
@bind CTRL-ALT-R
/cast [@arena1]Rend

[Arms - Rend Arena2]
@bind CTRL-ALT-S
/cast [@arena2]Rend

[Arms - Rend Arena3]
@bind CTRL-ALT-T
/cast [@arena3]Rend

[Arms - Rend Arena4]
@bind CTRL-ALT-U
/cast [@arena4]Rend

[Arms - Rend Arena5]
@bind CTRL-ALT-V
/cast [@arena5]Rend

[Arms - Skullsplitter]
@bind CTRL-ALT-W
/cast Skullsplitter

[Arms - Warbreaker | Colossus Smash]
@bind CTRL-ALT-X
/cast Warbreaker
/cast Colossus Smash

[Arms - Disarm]
@bind CTRL-ALT-Y
/stopcasting
/cast [@mouseover,harm][]Disarm

[Arms - Disarm Arena1]
@bind CTRL-ALT-Z
/stopcasting
/cast [@arena1]Disarm

[Arms - Disarm Arena2]
@bind CTRL-SHIFT-1
/stopcasting
/cast [@arena2]Disarm

[Arms - Disarm Arena3]
@bind CTRL-SHIFT-2
/stopcasting
/cast [@arena3]Disarm

[Arms - Disarm Arena4]
@bind CTRL-SHIFT-3
/stopcasting
/cast [@arena4]Disarm

[Arms - Disarm Arena5]
@bind CTRL-SHIFT-4
/stopcasting
/cast [@arena5]Disarm

[Arms - Duel]
@bind CTRL-SHIFT-5
/startattack
/cast Duel

[Arms - Duel Arena1]
@bind CTRL-SHIFT-6
/cast [@arena1]Duel

[Arms - Duel Arena2]
@bind CTRL-SHIFT-7
/cast [@arena2]Duel

[Arms - Duel Arena3]
@bind CTRL-SHIFT-8
/cast [@arena3]Duel

[Arms - Duel Arena4]
@bind CTRL-SHIFT-9
/cast [@arena4]Duel

[Arms - Duel Arena5]
@bind CTRL-SHIFT-0
/cast [@arena5]Duel

[Arms - Sharpen Blade]
@bind CTRL-SHIFT-A
/startattack
/cast Sharpen Blade

[Arms - Human Racial]
@bind CTRL-SHIFT-B
/cast Human Racial

[Arms - Stoneform]
@bind CTRL-SHIFT-C
/cast Stoneform

[Arms - Shadowmeld]
@bind CTRL-SHIFT-D
/cast Shadowmeld

[Arms - Escape Artist]
@bind CTRL-SHIFT-E
/cast Escape Artist

[Arms - Gift of the Naaru]
@bind CTRL-SHIFT-F
/cast [@mouseover,help][@focus,help][]Gift of the Naaru

[Arms - Darkflight]
@bind CTRL-SHIFT-G
/cast Darkflight

[Arms - Blood Fury]
@bind CTRL-SHIFT-H
/cast Blood Fury

[Arms - Will of the Forsaken]
@bind CTRL-SHIFT-I
/cast Will of the Forsaken

[Arms - War Stomp]
@bind CTRL-SHIFT-J
/cast War Stomp

[Arms - Berserking]
@bind CTRL-SHIFT-K
/cast Berserking

[Arms - Arcane Torrent]
@bind CTRL-SHIFT-L
/cast Arcane Torrent

[Arms - Rocket Jump]
@bind CTRL-SHIFT-M
/cast Rocket Jump

[Arms - Rocket Barrage]
@bind CTRL-SHIFT-N
/cast Rocket Barrage

[Arms - Quaking Palm]
@bind CTRL-SHIFT-O
/cast [@mouseover,harm][]Quaking Palm

[Arms - Spatial Rift]
@bind CTRL-SHIFT-P
/cast Spatial Rift

[Arms - Light's Judgment]
@bind CTRL-SHIFT-Q
/cast Light's Judgment

[Arms - Fireblood]
@bind CTRL-SHIFT-R
/cast Fireblood

[Arms - Arcane Pulse]
@bind CTRL-SHIFT-S
/cast Arcane Pulse

[Arms - Bull Rush]
@bind CTRL-SHIFT-T
/cast Bull Rush

[Arms - Ancestral Call]
@bind CTRL-SHIFT-U
/cast Ancestral Call

[Arms - Haymaker]
@bind CTRL-SHIFT-V
/cast [@mouseover,harm][]Haymaker

[Arms - Regeneratin]
@bind CTRL-SHIFT-W
/cast Regeneratin

[Arms - Bag of Tricks]
@bind CTRL-SHIFT-X
/cast [nocombat]Rummage Your Bag;[combat,@mouseover,exists][combat]Bag of Tricks

[Arms - Hyper Organic Light Originator]
@bind CTRL-SHIFT-Y
/cast Hyper Organic Light Originator

[Arms - Azerite Surge]
@bind CTRL-SHIFT-Z
/cast Azerite Surge

[Arms - Rotation]
@bind ALT-SHIFT-1
/cast Rotation

[Arms - Target Member1]
@bind ALT-SHIFT-2
/focus [mod:ctrl]raidpet1; [mod:alt]party1; raid1

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member2]
@bind ALT-SHIFT-3
/focus [mod:ctrl]raidpet2; [mod:alt]party2; raid2

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member3]
@bind ALT-SHIFT-4
/focus [mod:ctrl]raidpet3; [mod:alt]party3; raid3

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member4]
@bind ALT-SHIFT-5
/focus [mod:ctrl]raidpet4; [mod:alt]party4; raid4

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member5]
@bind ALT-SHIFT-6
/focus [mod:ctrl]raidpet5; [mod:alt]player; raid5

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member6]
@bind ALT-SHIFT-7
/focus [mod:ctrl]raidpet6; [mod:alt]focus; raid6

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member7]
@bind ALT-SHIFT-8
/focus [mod:ctrl]raidpet7; [mod:alt]partypet1; raid7

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member8]
@bind ALT-SHIFT-9
/focus [mod:ctrl]raidpet8; [mod:alt]partypet2; raid8

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member9]
@bind ALT-SHIFT-0
/focus [mod:ctrl]raidpet9; [mod:alt]partypet3; raid9

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member10]
@bind ALT-SHIFT-A
/focus [mod:ctrl]raidpet10; [mod:alt]partypet4; raid10

Note: Don't use ALT CTRL to bind this key!

[Arms - Target Member11]
@bind ALT-SHIFT-B
/focus [mod:ctrl]raidpet11; raid11

Note: Don't use CTRL to bind this key!

[Arms - Target Member12]
@bind ALT-SHIFT-C
/focus [mod:ctrl]raidpet12; raid12

Note: Don't use CTRL to bind this key!

[Arms - Target Member13]
@bind ALT-SHIFT-D
/focus [mod:ctrl]raidpet13; raid13

Note: Don't use CTRL to bind this key!

[Arms - Target Member14]
@bind ALT-SHIFT-E
/focus [mod:ctrl]raidpet14; raid14

Note: Don't use CTRL to bind this key!

[Arms - Target Member15]
@bind ALT-SHIFT-F
/focus [mod:ctrl]raidpet15; raid15

Note: Don't use CTRL to bind this key!

[Arms - Target Member16]
@bind ALT-SHIFT-G
/focus [mod:ctrl]raidpet16; raid16

Note: Don't use CTRL to bind this key!

[Arms - Target Member17]
@bind ALT-SHIFT-H
/focus [mod:ctrl]raidpet17; raid17

Note: Don't use CTRL to bind this key!

[Arms - Target Member18]
@bind ALT-SHIFT-I
/focus [mod:ctrl]raidpet18; raid18

Note: Don't use CTRL to bind this key!

[Arms - Target Member19]
@bind ALT-SHIFT-J
/focus [mod:ctrl]raidpet19; raid19

Note: Don't use CTRL to bind this key!

[Arms - Target Member20]
@bind ALT-SHIFT-K
/focus [mod:ctrl]raidpet20; raid20

Note: Don't use CTRL to bind this key!

[Arms - Target Member21]
@bind ALT-SHIFT-L
/focus [mod:ctrl]raidpet21; raid21

Note: Don't use CTRL to bind this key!

[Arms - Target Member22]
@bind ALT-SHIFT-M
/focus [mod:ctrl]raidpet22; raid22

Note: Don't use CTRL to bind this key!

[Arms - Target Member23]
@bind ALT-SHIFT-N
/focus [mod:ctrl]raidpet23; raid23

Note: Don't use CTRL to bind this key!

[Arms - Target Member24]
@bind ALT-SHIFT-O
/focus [mod:ctrl]raidpet24; raid24

Note: Don't use CTRL to bind this key!

[Arms - Target Member25]
@bind ALT-SHIFT-P
/focus [mod:ctrl]raidpet25; raid25

Note: Don't use CTRL to bind this key!

[Arms - Target Member26]
@bind ALT-SHIFT-Q
/focus [mod:ctrl]raidpet26; raid26

Note: Don't use CTRL to bind this key!

[Arms - Target Member27]
@bind ALT-SHIFT-R
/focus [mod:ctrl]raidpet27; raid27

Note: Don't use CTRL to bind this key!

[Arms - Target Member28]
@bind ALT-SHIFT-S
/focus [mod:ctrl]raidpet28; raid28

Note: Don't use CTRL to bind this key!

[Arms - Target Member29]
@bind ALT-SHIFT-T
/focus [mod:ctrl]raidpet29; raid29

Note: Don't use CTRL to bind this key!

[Arms - Target Member30]
@bind ALT-SHIFT-U
/focus [mod:ctrl]raidpet30; raid30

Note: Don't use CTRL to bind this key!

[Arms - Target Member31]
@bind ALT-SHIFT-V
/focus [mod:ctrl]raidpet31; raid31

Note: Don't use CTRL to bind this key!

[Arms - Target Member32]
@bind ALT-SHIFT-W
/focus [mod:ctrl]raidpet32; raid32

Note: Don't use CTRL to bind this key!

[Arms - Target Member33]
@bind ALT-SHIFT-X
/focus [mod:ctrl]raidpet33; raid33

Note: Don't use CTRL to bind this key!

[Arms - Target Member34]
@bind ALT-SHIFT-Y
/focus [mod:ctrl]raidpet34; raid34

Note: Don't use CTRL to bind this key!

[Arms - Target Member35]
@bind ALT-SHIFT-Z
/focus [mod:ctrl]raidpet35; raid35

Note: Don't use CTRL to bind this key!

[Arms - Target Member36]
@bind CTRL-ALT-SHIFT-1
/focus [mod:ctrl]raidpet36; raid36

Note: Don't use CTRL to bind this key!

[Arms - Target Member37]
@bind CTRL-ALT-SHIFT-2
/focus [mod:ctrl]raidpet37; raid37

Note: Don't use CTRL to bind this key!

[Arms - Target Member38]
@bind CTRL-ALT-SHIFT-3
/focus [mod:ctrl]raidpet38; raid38

Note: Don't use CTRL to bind this key!

[Arms - Target Member39]
@bind CTRL-ALT-SHIFT-4
/focus [mod:ctrl]raidpet39; raid39

Note: Don't use CTRL to bind this key!

[Arms - Target Member40]
@bind CTRL-ALT-SHIFT-5
/focus [mod:ctrl]raidpet40; raid40

Note: Don't use CTRL to bind this key!

[Arms - Secondary Rotation]
@bind CTRL-ALT-SHIFT-6
/cast Secondary Rotation

[Arms - Trinket Rotation]
@bind CTRL-ALT-SHIFT-7
/cast Trinket Rotation

[Arms - AntiFake CC]
@bind CTRL-ALT-SHIFT-8
/cast AntiFake CC

[Arms - AntiFake CC Focus]
@bind CTRL-ALT-SHIFT-9
/cast AntiFake CC Focus

[Arms - AntiFake Interrupt]
@bind CTRL-ALT-SHIFT-0
/cast AntiFake Interrupt

[Arms - AntiFake Interrupt Focus]
@bind CTRL-ALT-SHIFT-A
/cast AntiFake Interrupt Focus

[Arms - AntiFake CC2]
@bind CTRL-ALT-SHIFT-B
/cast AntiFake CC2

[Arms - AntiFake CC2 Focus]
@bind CTRL-ALT-SHIFT-C
/cast AntiFake CC2 Focus

[Arms - Potion]
@bind CTRL-ALT-SHIFT-D
/cast Potion

[Arms - Universal1]
@bind CTRL-ALT-SHIFT-E
/cast Universal1

[Arms - Universal2]
@bind CTRL-ALT-SHIFT-F
/cast Universal2

[Arms - Universal3]
@bind CTRL-ALT-SHIFT-G
/cast Universal3

[Arms - Universal4]
@bind CTRL-ALT-SHIFT-H
/cast Universal4

[Arms - Universal5]
@bind CTRL-ALT-SHIFT-I
/cast Universal5

[Arms - Universal6]
@bind CTRL-ALT-SHIFT-J
/cast Universal6

[Arms - Universal7]
@bind CTRL-ALT-SHIFT-K
/cast Universal7

[Arms - Universal8]
@bind CTRL-ALT-SHIFT-L
/cast Universal8

[Arms - Universal9]
@bind CTRL-ALT-SHIFT-M
/cast Universal9

[Arms - Universal10]
@bind CTRL-ALT-SHIFT-N
/cast Universal10

[Arms - Universal1 Unit1]
@bind CTRL-ALT-SHIFT-O
/cast Universal1 Unit1

[Arms - Universal1 Unit2]
@bind CTRL-ALT-SHIFT-P
/cast Universal1 Unit2

[Arms - Universal1 Unit3]
@bind CTRL-ALT-SHIFT-Q
/cast Universal1 Unit3

[Arms - Universal1 Unit4]
@bind CTRL-ALT-SHIFT-R
/cast Universal1 Unit4

[Arms - Universal1 Unit5]
@bind CTRL-ALT-SHIFT-S
/cast Universal1 Unit5

[Arms - Universal2 Unit1]
@bind CTRL-ALT-SHIFT-T
/cast Universal2 Unit1

[Arms - Universal2 Unit2]
@bind CTRL-ALT-SHIFT-U
/cast Universal2 Unit2

[Arms - Universal2 Unit3]
@bind CTRL-ALT-SHIFT-V
/cast Universal2 Unit3

[Arms - Universal2 Unit4]
@bind CTRL-ALT-SHIFT-W
/cast Universal2 Unit4

[Arms - Universal2 Unit5]
@bind CTRL-ALT-SHIFT-X
/cast Universal2 Unit5

[Arms - Universal3 Unit1]
@bind CTRL-ALT-SHIFT-Y
/cast Universal3 Unit1

[Arms - Universal3 Unit2]
@bind CTRL-ALT-SHIFT-Z
/cast Universal3 Unit2

[Arms - Universal3 Unit3]
@bind CTRL-F1
/cast Universal3 Unit3

[Arms - Universal3 Unit4]
@bind CTRL-F2
/cast Universal3 Unit4

[Arms - Universal3 Unit5]
@bind CTRL-F3
/cast Universal3 Unit5

[Arms - Universal4 Unit1]
@bind CTRL-F4
/cast Universal4 Unit1

[Arms - Universal4 Unit2]
@bind CTRL-F5
/cast Universal4 Unit2

[Arms - Universal4 Unit3]
@bind CTRL-F6
/cast Universal4 Unit3

[Arms - Universal4 Unit4]
@bind CTRL-F7
/cast Universal4 Unit4

[Arms - Universal4 Unit5]
@bind CTRL-F8
/cast Universal4 Unit5

[Arms - Universal5 Unit1]
@bind CTRL-F9
/cast Universal5 Unit1

[Arms - Universal5 Unit2]
@bind CTRL-F10
/cast Universal5 Unit2

[Arms - Universal5 Unit3]
@bind CTRL-F11
/cast Universal5 Unit3

[Arms - Universal5 Unit4]
@bind CTRL-F12
/cast Universal5 Unit4

[Arms - Universal5 Unit5]
@bind ALT-F1
/cast Universal5 Unit5

[Arms - Universal6 Unit1]
@bind ALT-F2
/cast Universal6 Unit1

[Arms - Universal6 Unit2]
@bind ALT-F3
/cast Universal6 Unit2

[Arms - Universal6 Unit3]
@bind ALT-F4
/cast Universal6 Unit3

[Arms - Universal6 Unit4]
@bind ALT-F5
/cast Universal6 Unit4

[Arms - Universal6 Unit5]
@bind ALT-F6
/cast Universal6 Unit5

[Arms - Universal7 Unit1]
@bind ALT-F7
/cast Universal7 Unit1

[Arms - Universal7 Unit2]
@bind ALT-F8
/cast Universal7 Unit2

[Arms - Universal7 Unit3]
@bind ALT-F9
/cast Universal7 Unit3

[Arms - Universal7 Unit4]
@bind ALT-F10
/cast Universal7 Unit4

[Arms - Universal7 Unit5]
@bind ALT-F11
/cast Universal7 Unit5

[Arms - Universal8 Unit1]
@bind ALT-F12
/cast Universal8 Unit1

[Arms - Universal8 Unit2]
@bind CTRL-ALT-F1
/cast Universal8 Unit2

[Arms - Universal8 Unit3]
@bind CTRL-ALT-F2
/cast Universal8 Unit3

[Arms - Universal8 Unit4]
@bind CTRL-ALT-F3
/cast Universal8 Unit4

[Arms - Universal8 Unit5]
@bind CTRL-ALT-F4
/cast Universal8 Unit5

[Arms - Universal9 Unit1]
@bind CTRL-ALT-F5
/cast Universal9 Unit1

[Arms - Universal9 Unit2]
@bind CTRL-ALT-F6
/cast Universal9 Unit2

[Arms - Universal9 Unit3]
@bind CTRL-ALT-F7
/cast Universal9 Unit3

[Arms - Universal9 Unit4]
@bind CTRL-ALT-F8
/cast Universal9 Unit4

[Arms - Universal9 Unit5]
@bind CTRL-ALT-F9
/cast Universal9 Unit5

[Arms - Universal10 Unit1]
@bind CTRL-ALT-F10
/cast Universal10 Unit1

[Arms - Universal10 Unit2]
@bind CTRL-ALT-F11
/cast Universal10 Unit2

[Arms - Universal10 Unit3]
@bind CTRL-ALT-F12
/cast Universal10 Unit3

[Arms - Universal10 Unit4]
@bind CTRL-SHIFT-F1
/cast Universal10 Unit4

[Arms - Universal10 Unit5]
@bind CTRL-SHIFT-F2
/cast Universal10 Unit5

[Arms - Every Man for Himself]
@bind CTRL-SHIFT-F3
/cast Every Man for Himself

[Arms - Dark Flight]
@bind CTRL-SHIFT-F4
/cast Dark Flight

[Arms - Ravager]
@bind CTRL-SHIFT-F5
/cast Ravager

[Arms - Warbreaker]
@bind CTRL-SHIFT-F6
/cast Warbreaker

[Arms - Colossus Smash]
@bind CTRL-SHIFT-F7
/cast Colossus Smash

[Arms - Test of Might]
@bind CTRL-SHIFT-F8
/cast Test of Might

[Arms - Bladestorm]
@bind CTRL-SHIFT-F9
/cast Bladestorm

[Arms - Tideof Blood]
@bind CTRL-SHIFT-F10
/cast Tideof Blood

[Arms - Battlelord]
@bind CTRL-SHIFT-F11
/cast Battlelord

[Arms - Unhinged]
@bind CTRL-SHIFT-F12
/cast Unhinged

[Arms - Fervorof Battle]
@bind ALT-SHIFT-F1
/cast Fervorof Battle

[Arms - Heroic Strike]
@bind ALT-SHIFT-F2
/cast Heroic Strike

[Arms - Impending Victory]
@bind ALT-SHIFT-F3
/cast Impending Victory

[Arms - Wrecking Throw]
@bind ALT-SHIFT-F4
/cast Wrecking Throw

[Arms - Massacre]
@bind ALT-SHIFT-F5
/cast Massacre

[Arms - Sonic Boom]
@bind ALT-SHIFT-F6
/cast Sonic Boom

[Arms - Bloodand Thunder]
@bind ALT-SHIFT-F7
/cast Bloodand Thunder

[Arms - Blademasters Torment]
@bind ALT-SHIFT-F8
/cast Blademasters Torment

[Arms - Stormof Swords]
@bind ALT-SHIFT-F9
/cast Stormof Swords

[Arms - Crushing Force]
@bind ALT-SHIFT-F10
/cast Crushing Force

[Arms - Warlords Torment]
@bind ALT-SHIFT-F11
/cast Warlords Torment

[Arms - Bloodletting]
@bind ALT-SHIFT-F12
/cast Bloodletting

[Arms - Improved Slam]
@bind CTRL-ALT-SHIFT-F1
/cast Improved Slam

[Arms - Merciless Bonegrinder]
@bind CTRL-ALT-SHIFT-F2
/cast Merciless Bonegrinder

[Arms - Strengthof Arms]
@bind CTRL-ALT-SHIFT-F3
/cast Strengthof Arms

[Arms - Executioners Precision]
@bind CTRL-ALT-SHIFT-F4
/cast Executioners Precision

[Arms - Juggernaut]
@bind CTRL-ALT-SHIFT-F5
/cast Juggernaut

[Arms - Fierce Followthrough]
@bind CTRL-ALT-SHIFT-F6
/cast Fierce Followthrough

[Arms - Slayers Dominance]
@bind CTRL-ALT-SHIFT-F7
/cast Slayers Dominance

[Arms - Pummel]
@bind CTRL-ALT-SHIFT-F8
/cast Pummel

[Arms - Seethe]
@bind CTRL-ALT-SHIFT-F9
/cast Seethe

[Arms - Overwatch]
@bind CTRL-ALT-SHIFT-F10
/cast Overwatch

[Arms - Shattering Throw]
@bind CTRL-ALT-SHIFT-F11
/cast Shattering Throw

[Arms - Enduring Rage]
@bind CTRL-ALT-SHIFT-F12
/cast Enduring Rage

[Arms - Bloodrage]
@bind CTRL-NUMPAD1
/cast Bloodrage

[Arms - Death Wish]
@bind CTRL-NUMPAD2
/cast Death Wish

[Arms - Demolition]
@bind CTRL-NUMPAD3
/cast Demolition

[Arms - War Banner]
@bind CTRL-NUMPAD4
/cast War Banner

[Arms - Dreadnaught]
@bind CTRL-NUMPAD5
/cast Dreadnaught

[Arms - Anger Management]
@bind CTRL-NUMPAD6
/cast Anger Management

[Arms - Improved Sweeping Strikes]
@bind CTRL-NUMPAD7
/cast Improved Sweeping Strikes

[Arms - Sharpened Blades]
@bind CTRL-NUMPAD8
/cast Sharpened Blades

[Arms - Berserker Rage]
@bind CTRL-NUMPAD9
/cast Berserker Rage

[Arms - Victory Rush]
@bind CTRL-NUMPAD0
/cast Victory Rush

[Arms - Frozen Binds]
@bind ALT-NUMPAD1
/cast Frozen Binds

[Arms - Sanguine]
@bind ALT-NUMPAD2
/cast Sanguine

[Arms - Sated]
@bind ALT-NUMPAD3
/cast Sated

[Arms - SBA]
@bind ALT-NUMPAD4
/cast SBA

[Arms - Blessing of Protection]
@bind ALT-NUMPAD5
/cast Blessing of Protection

[Arms - Dark Pact]
@bind ALT-NUMPAD6
/cast Dark Pact

[Arms - Combustion]
@bind ALT-NUMPAD7
/cast Combustion

[Arms - Icy Veins]
@bind ALT-NUMPAD8
/cast Icy Veins

[Arms - Alter Time]
@bind ALT-NUMPAD9
/cast Alter Time

[Arms - Arcane Power]
@bind ALT-NUMPAD0
/cast Arcane Power

[Arms - Divine Favor]
@bind CTRL-ALT-NUMPAD1
/cast Divine Favor

[Arms - Blessing of Freedom]
@bind CTRL-ALT-NUMPAD2
/cast Blessing of Freedom

[Arms - Power Infusion]
@bind CTRL-ALT-NUMPAD3
/cast Power Infusion

[Arms - Survival Tactics]
@bind CTRL-ALT-NUMPAD4
/cast Survival Tactics

[Arms - Cloak of Shadows]
@bind CTRL-ALT-NUMPAD5
/cast Cloak of Shadows

[Arms - Reflect]
@bind CTRL-ALT-NUMPAD6
/cast Reflect

[Arms - Devouring Plague]
@bind CTRL-ALT-NUMPAD7
/cast Devouring Plague

[Arms - Aspect of the Turtle]
@bind CTRL-ALT-NUMPAD8
/cast Aspect of the Turtle

[Arms - Divine Shield]
@bind CTRL-ALT-NUMPAD9
/cast Divine Shield

[Arms - Ice Block]
@bind CTRL-ALT-NUMPAD0
/cast Ice Block

[Arms - Slaughterhouse]
@bind CTRL-SHIFT-NUMPAD1
/cast Slaughterhouse

[Arms - Death Sentence]
@bind CTRL-SHIFT-NUMPAD2
/cast Death Sentence

[Arms - Battle Trance]
@bind CTRL-SHIFT-NUMPAD3
/cast Battle Trance

[Arms - Barbarian]
@bind CTRL-SHIFT-NUMPAD4
/cast Barbarian
]==]
