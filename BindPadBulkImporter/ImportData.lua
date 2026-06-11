-- Generated from remade GGL config.
BindPadBulkImporterDataText = [==[
#bindpad

#character

[START SECON]
@bind ALT-SHIFT-1
/cast START Secondary Rotation

[SWAPWEAP]
@bind ALT-SHIFT-2
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
@bind ALT-SHIFT-3
/startattack
/cast Battle Shout

[BERSE ROAR]
@bind ALT-SHIFT-4
/cast Berserker Roar
/cast Berserker Shout
/cast Berserker Rage

[CHARGE]
@bind ALT-SHIFT-5
/startattack
/cast [@mouseover,harm][]Charge

[CHARGE A1]
@bind ALT-SHIFT-6
/cast [@arena1]Charge

[CHARGE A2]
@bind ALT-SHIFT-7
/cast [@arena2]Charge

[CHARGE A3]
@bind ALT-SHIFT-8
/cast [@arena3]Charge

[CHARGE A4]
@bind ALT-SHIFT-9
/cast [@arena4]Charge

[CHARGE A5]
@bind ALT-SHIFT-0
/cast [@arena5]Charge

[EXE]
@bind ALT-SHIFT-A
/cast Execute

[HAM]
@bind ALT-SHIFT-B
/cast Hamstring

[HEROI THROW]
@bind ALT-SHIFT-C
/cast Heroic Throw

[INT]
@bind ALT-SHIFT-D
/stopcasting
/cast [@mouseover,harm][]Pummel

[INT FOC]
@bind ALT-SHIFT-E
/stopcasting
/cast [@focus]Pummel

[INT A1]
@bind ALT-SHIFT-F
/stopcasting
/cast [@arena1]Pummel
/cast [@arena1]Hamstring
/cast [@arena1]Titanic Throw
/cast [@arena1]Heroic Throw

[INT A2]
@bind ALT-SHIFT-G
/stopcasting
/cast [@arena2]Pummel
/cast [@arena2]Hamstring
/cast [@arena2]Titanic Throw
/cast [@arena2]Heroic Throw

[INT A3]
@bind ALT-SHIFT-H
/stopcasting
/cast [@arena3]Pummel
/cast [@arena3]Hamstring
/cast [@arena3]Titanic Throw
/cast [@arena3]Heroic Throw

[INT A4]
@bind ALT-SHIFT-I
/stopcasting
/cast [@arena4]Pummel
/cast [@arena4]Hamstring
/cast [@arena4]Titanic Throw
/cast [@arena4]Heroic Throw

[INT A5]
@bind ALT-SHIFT-J
/stopcasting
/cast [@arena5]Pummel
/cast [@arena5]Hamstring
/cast [@arena5]Titanic Throw
/cast [@arena5]Heroic Throw

[SHIEL BLOCK]
@bind ALT-SHIFT-K
/startattack
/cast Shield Block

[SHIELD]
@bind ALT-SHIFT-L
/cast Shield Slam

[SLAM]
@bind ALT-SHIFT-M
/cast Slam

[TAUNT]
@bind ALT-SHIFT-N
/cast [@mouseover,harm][]Oppressor
/cast [@mouseover,harm][]Taunt

[TAUNT PETS]
@bind ALT-SHIFT-O
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

[TAUNT U5]
@bind ALT-SHIFT-P
/stopcasting
/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Oppressor
/cast [@raidpet5,harm][@raid5,harm][@pet,harm][@arenapet5,harm][@arena5]Taunt

[IMPEN VICTO]
@bind ALT-SHIFT-Q
/cast Impending Victory
/cast Victory Rush

[WHIRL]
@bind ALT-SHIFT-R
/cast Whirlwind

[BATTL STANC]
@bind ALT-SHIFT-S
/cast Battle Stance

[DEFEN STANC]
@bind ALT-SHIFT-T
/cast Defensive Stance

[INTERVEN]
@bind ALT-SHIFT-U
/stopcasting
/cast [@mouseover,help][@focus,help][]Intervene

[HEROI LEAP]
@bind ALT-SHIFT-V
/cast Heroic Leap

[STORM]
@bind ALT-SHIFT-W
/stopcasting
/cast [@mouseover,harm][]Storm Bolt

[STORM FOC]
@bind ALT-SHIFT-X
/stopcasting
/cast [@focus]Storm Bolt

[STORM A1]
@bind ALT-SHIFT-Y
/stopcasting
/cast [@arena1]Storm Bolt

[STORM A2]
@bind ALT-SHIFT-Z
/stopcasting
/cast [@arena2]Storm Bolt

[STORM A3]
@bind CTRL-SHIFT-1
/stopcasting
/cast [@arena3]Storm Bolt

[STORM A4]
@bind CTRL-SHIFT-2
/stopcasting
/cast [@arena4]Storm Bolt

[STORM A5]
@bind CTRL-SHIFT-3
/stopcasting
/cast [@arena5]Storm Bolt

[INTIM]
@bind CTRL-SHIFT-4
/stopattack
/cast [@mouseover,harm][]Intimidating Shout

[INTIM A1]
@bind CTRL-SHIFT-5
/cast [@arena1]Intimidating Shout

[INTIM A2]
@bind CTRL-SHIFT-6
/cast [@arena2]Intimidating Shout

[INTIM A3]
@bind CTRL-SHIFT-7
/cast [@arena3]Intimidating Shout

[INTIM A4]
@bind CTRL-SHIFT-8
/cast [@arena4]Intimidating Shout

[INTIM A5]
@bind CTRL-SHIFT-9
/cast [@arena5]Intimidating Shout

[THUND CLAP]
@bind CTRL-SHIFT-0
/cast Thunder Clap

[REFLECT]
@bind CTRL-SHIFT-A
/startattack
/stopcasting
/cast Spell Reflection

[RALLY CRY]
@bind CTRL-SHIFT-B
/startattack
/cast Rallying Cry

[SHOCKWAV]
@bind CTRL-SHIFT-C
/cast Shockwave

[BITTE IMMUN]
@bind CTRL-SHIFT-D
/cast Bitter Immunity

[WRECK THROW]
@bind CTRL-SHIFT-E
/cast Wrecking Throw
/cast Shattering Throw

[PIERC HOWL]
@bind CTRL-SHIFT-F
/cast Piercing Howl

[THUND ROAR]
@bind CTRL-SHIFT-G
/cast Thunderous Roar

[AVATAR]
@bind CTRL-SHIFT-H
/startattack
/cast Avatar

[CHAMP SPEAR]
@bind CTRL-SHIFT-I
/cast [combat,@player][]Champion's Spear

[SWEEP STRIK]
@bind CTRL-SHIFT-J
/cast Sweeping Strikes

[CLEAVE]
@bind CTRL-SHIFT-K
/cast Cleave

[DEMOLISH]
@bind CTRL-SHIFT-L
/cast Demolish

[DIE BY]
@bind CTRL-SHIFT-M
/cast Die by the Sword

[IGNOR PAIN]
@bind CTRL-SHIFT-N
/startattack
/cast Ignore Pain

[MORTAL]
@bind CTRL-SHIFT-O
/cast Mortal Strike

[OVER]
@bind CTRL-SHIFT-P
/cast Overpower

[BLADE]
@bind CTRL-SHIFT-Q
/cast Bladestorm
/cast [combat,@player][]Ravager

[REND]
@bind CTRL-SHIFT-R
/cast Rend

[REND A1]
@bind CTRL-SHIFT-S
/cast [@arena1]Rend

[REND A2]
@bind CTRL-SHIFT-T
/cast [@arena2]Rend

[REND A3]
@bind CTRL-SHIFT-U
/cast [@arena3]Rend

[REND A4]
@bind CTRL-SHIFT-V
/cast [@arena4]Rend

[REND A5]
@bind CTRL-SHIFT-W
/cast [@arena5]Rend

[SKULLSPL]
@bind CTRL-SHIFT-X
/cast Skullsplitter

[WARBR]
@bind CTRL-SHIFT-Y
/cast Warbreaker
/cast Colossus Smash

[DISARM]
@bind CTRL-SHIFT-Z
/stopcasting
/cast [@mouseover,harm][]Disarm

[DISARM A1]
@bind ALT-SHIFT-F1
/stopcasting
/cast [@arena1]Disarm

[DISARM A2]
@bind ALT-SHIFT-F2
/stopcasting
/cast [@arena2]Disarm

[DISARM A3]
@bind ALT-SHIFT-F3
/stopcasting
/cast [@arena3]Disarm

[DISARM A4]
@bind ALT-SHIFT-F4
/stopcasting
/cast [@arena4]Disarm

[DISARM A5]
@bind ALT-SHIFT-F5
/stopcasting
/cast [@arena5]Disarm

[DUEL]
@bind ALT-SHIFT-F6
/startattack
/cast Duel

[DUEL A1]
@bind ALT-SHIFT-F7
/cast [@arena1]Duel

[DUEL A2]
@bind ALT-SHIFT-F8
/cast [@arena2]Duel

[DUEL A3]
@bind ALT-SHIFT-F9
/cast [@arena3]Duel

[DUEL A4]
@bind ALT-SHIFT-F10
/cast [@arena4]Duel

[DUEL A5]
@bind ALT-SHIFT-F11
/cast [@arena5]Duel

[SHARP BLADE]
@bind ALT-SHIFT-F12
/startattack
/cast Sharpen Blade

[ROTATION]
@bind ALT-SHIFT-F13
/cast Rotation

[SECON ROTAT]
@bind ALT-SHIFT-F14
/cast Secondary Rotation

[TRINK ROTAT]
@bind ALT-SHIFT-F15
/cast Trinket Rotation

[ANTIF CC]
@bind ALT-SHIFT-F16
/cast AntiFake CC

[ANTIF CC FOC]
@bind ALT-SHIFT-F17
/cast AntiFake CC Focus

[ANTIF INTER]
@bind ALT-SHIFT-F18
/cast AntiFake Interrupt

[ANTIF INTER FOC]
@bind ALT-SHIFT-F19
/cast AntiFake Interrupt Focus

[ANTIF CC2]
@bind ALT-SHIFT-F20
/cast AntiFake CC2

[ANTIF CC2 FOC]
@bind ALT-SHIFT-F21
/cast AntiFake CC2 Focus

[POTION]
@bind ALT-SHIFT-F22
/cast Potion

[UNIVERSA]
@bind ALT-SHIFT-F23
/cast Universal1

[UNIVERSA2]
@bind ALT-SHIFT-F24
/cast Universal2

[UNIVERSA3]
@bind CTRL-SHIFT-F1
/cast Universal3

[UNIVERSA4]
@bind CTRL-SHIFT-F2
/cast Universal4

[UNIVERSA5]
@bind CTRL-SHIFT-F3
/cast Universal5

[UNIVERSA6]
@bind CTRL-SHIFT-F4
/cast Universal6

[UNIVERSA7]
@bind CTRL-SHIFT-F5
/cast Universal7

[UNIVERSA8]
@bind CTRL-SHIFT-F6
/cast Universal8

[UNIVERSA9]
@bind CTRL-SHIFT-F7
/cast Universal9

[UNIVERSA10]
@bind CTRL-SHIFT-F8
/cast Universal10

[UNIVERSA U1]
@bind CTRL-SHIFT-F9
/cast Universal1 Unit1

[UNIVERSA U2]
@bind CTRL-SHIFT-F10
/cast Universal1 Unit2

[UNIVERSA U3]
@bind CTRL-SHIFT-F11
/cast Universal1 Unit3

[UNIVERSA U4]
@bind CTRL-SHIFT-F12
/cast Universal1 Unit4

[UNIVERSA U5]
@bind CTRL-SHIFT-F13
/cast Universal1 Unit5

[UNIVERSA U12]
@bind CTRL-SHIFT-F14
/cast Universal2 Unit1

[UNIVERSA U22]
@bind CTRL-SHIFT-F15
/cast Universal2 Unit2

[UNIVERSA U32]
@bind CTRL-SHIFT-F16
/cast Universal2 Unit3

[UNIVERSA U42]
@bind CTRL-SHIFT-F17
/cast Universal2 Unit4

[UNIVERSA U52]
@bind CTRL-SHIFT-F18
/cast Universal2 Unit5

[UNIVERSA U13]
@bind CTRL-SHIFT-F19
/cast Universal3 Unit1

[UNIVERSA U23]
@bind CTRL-SHIFT-F20
/cast Universal3 Unit2

[UNIVERSA U33]
@bind CTRL-SHIFT-F21
/cast Universal3 Unit3

[UNIVERSA U43]
@bind CTRL-SHIFT-F22
/cast Universal3 Unit4

[UNIVERSA U53]
@bind CTRL-SHIFT-F23
/cast Universal3 Unit5

[UNIVERSA U14]
@bind CTRL-SHIFT-F24
/cast Universal4 Unit1

[UNIVERSA U24]
@bind ALT-SHIFT-NUMPAD1
/cast Universal4 Unit2

[UNIVERSA U34]
@bind ALT-SHIFT-NUMPAD2
/cast Universal4 Unit3

[UNIVERSA U44]
@bind ALT-SHIFT-NUMPAD3
/cast Universal4 Unit4

[UNIVERSA U54]
@bind ALT-SHIFT-NUMPAD4
/cast Universal4 Unit5

[UNIVERSA U15]
@bind ALT-SHIFT-NUMPAD5
/cast Universal5 Unit1

[UNIVERSA U25]
@bind ALT-SHIFT-NUMPAD6
/cast Universal5 Unit2

[UNIVERSA U35]
@bind ALT-SHIFT-NUMPAD7
/cast Universal5 Unit3

[UNIVERSA U45]
@bind ALT-SHIFT-NUMPAD8
/cast Universal5 Unit4

[UNIVERSA U55]
@bind ALT-SHIFT-NUMPAD9
/cast Universal5 Unit5

[UNIVERSA U16]
@bind ALT-SHIFT-NUMPAD0
/cast Universal6 Unit1

[UNIVERSA U26]
@bind ALT-SHIFT-NUMPADPLUS
/cast Universal6 Unit2

[UNIVERSA U36]
@bind ALT-SHIFT-NUMPADMINUS
/cast Universal6 Unit3

[UNIVERSA U46]
@bind ALT-SHIFT-NUMPADMULTIPLY
/cast Universal6 Unit4

[UNIVERSA U56]
@bind ALT-SHIFT-NUMPADDIVIDE
/cast Universal6 Unit5

[UNIVERSA U17]
@bind ALT-SHIFT-NUMPADDECIMAL
/cast Universal7 Unit1

[UNIVERSA U27]
@bind CTRL-SHIFT-NUMPAD1
/cast Universal7 Unit2

[UNIVERSA U37]
@bind CTRL-SHIFT-NUMPAD2
/cast Universal7 Unit3

[UNIVERSA U47]
@bind CTRL-SHIFT-NUMPAD3
/cast Universal7 Unit4

[UNIVERSA U57]
@bind CTRL-SHIFT-NUMPAD4
/cast Universal7 Unit5

[UNIVERSA U18]
@bind CTRL-SHIFT-NUMPAD5
/cast Universal8 Unit1

[UNIVERSA U28]
@bind CTRL-SHIFT-NUMPAD6
/cast Universal8 Unit2

[UNIVERSA U38]
@bind CTRL-SHIFT-NUMPAD7
/cast Universal8 Unit3

[UNIVERSA U48]
@bind CTRL-SHIFT-NUMPAD8
/cast Universal8 Unit4

[UNIVERSA U58]
@bind CTRL-SHIFT-NUMPAD9
/cast Universal8 Unit5

[UNIVERSA U19]
@bind CTRL-SHIFT-NUMPAD0
/cast Universal9 Unit1

[UNIVERSA U29]
@bind CTRL-SHIFT-NUMPADPLUS
/cast Universal9 Unit2

[UNIVERSA U39]
@bind CTRL-SHIFT-NUMPADMINUS
/cast Universal9 Unit3

[UNIVERSA U49]
@bind CTRL-SHIFT-NUMPADMULTIPLY
/cast Universal9 Unit4

[UNIVERSA U59]
@bind CTRL-SHIFT-NUMPADDIVIDE
/cast Universal9 Unit5

[UNIVERSA U110]
@bind CTRL-SHIFT-NUMPADDECIMAL
/cast Universal10 Unit1

[UNIVERSA U210]
@bind ALT-SHIFT-INSERT
/cast Universal10 Unit2

[UNIVERSA U310]
@bind ALT-SHIFT-DELETE
/cast Universal10 Unit3

[UNIVERSA U410]
@bind ALT-SHIFT-HOME
/cast Universal10 Unit4

[UNIVERSA U510]
@bind ALT-SHIFT-END
/cast Universal10 Unit5

[EVERY MAN]
@bind ALT-SHIFT-PAGEUP
/cast Every Man for Himself

[DARK FLIGH]
@bind ALT-SHIFT-PAGEDOWN
/cast Dark Flight

[RAVAGER]
@bind ALT-SHIFT-UP
/cast Ravager

[WARBREAK]
@bind ALT-SHIFT-DOWN
/cast Warbreaker

[COLOSSUS]
@bind ALT-SHIFT-LEFT
/cast Colossus Smash

[TEST OF]
@bind ALT-SHIFT-RIGHT
/cast Test of Might

[BLADESTO]
@bind ALT-SHIFT-TAB
/cast Bladestorm

[TIDEO BLOOD]
@bind ALT-SHIFT-SPACE
/cast Tideof Blood

[BATTLELO]
@bind ALT-SHIFT-ENTER
/cast Battlelord

[UNHINGED]
@bind ALT-SHIFT-BACKSPACE
/cast Unhinged

[FERVO BATTL]
@bind ALT-SHIFT-CAPSLOCK
/cast Fervorof Battle

[HEROI STRIK]
@bind ALT-SHIFT-MINUS
/cast Heroic Strike

[IMPEN VICTO2]
@bind ALT-SHIFT-EQUALS
/cast Impending Victory

[WRECK THROW2]
@bind ALT-SHIFT-LBRACKET
/cast Wrecking Throw

[MASSACRE]
@bind ALT-SHIFT-RBRACKET
/cast Massacre

[SONIC BOOM]
@bind ALT-SHIFT-BACKSLASH
/cast Sonic Boom

[BLOOD THUND]
@bind ALT-SHIFT-SEMICOLON
/cast Bloodand Thunder

[BLADE TORME]
@bind ALT-SHIFT-APOSTROPHE
/cast Blademasters Torment

[STORM SWORD]
@bind ALT-SHIFT-COMMA
/cast Stormof Swords

[CRUSH FORCE]
@bind ALT-SHIFT-PERIOD
/cast Crushing Force

[WARLO TORME]
@bind ALT-SHIFT-SLASH
/cast Warlords Torment

[BLOODLET]
@bind ALT-SHIFT-GRAVE
/cast Bloodletting

[IMPRO SLAM]
@bind CTRL-SHIFT-INSERT
/cast Improved Slam

[MERCI BONEG]
@bind CTRL-SHIFT-DELETE
/cast Merciless Bonegrinder

[STREN ARMS]
@bind CTRL-SHIFT-HOME
/cast Strengthof Arms

[EXECU PRECI]
@bind CTRL-SHIFT-END
/cast Executioners Precision

[JUGGERNA]
@bind CTRL-SHIFT-PAGEUP
/cast Juggernaut

[FIERC FOLLO]
@bind CTRL-SHIFT-PAGEDOWN
/cast Fierce Followthrough

[SLAYE DOMIN]
@bind CTRL-SHIFT-UP
/cast Slayers Dominance

[PUMMEL]
@bind CTRL-SHIFT-DOWN
/cast Pummel

[SEETHE]
@bind CTRL-SHIFT-LEFT
/cast Seethe

[OVERWATC]
@bind CTRL-SHIFT-RIGHT
/cast Overwatch

[SHATT THROW]
@bind CTRL-SHIFT-TAB
/cast Shattering Throw

[ENDUR RAGE]
@bind CTRL-SHIFT-SPACE
/cast Enduring Rage

[BLOODRAG]
@bind CTRL-SHIFT-ENTER
/cast Bloodrage

[DEATH WISH]
@bind CTRL-SHIFT-BACKSPACE
/cast Death Wish

[DEMOLITI]
@bind CTRL-SHIFT-CAPSLOCK
/cast Demolition

[WAR BANNE]
@bind CTRL-SHIFT-MINUS
/cast War Banner

[DREADNAU]
@bind CTRL-SHIFT-EQUALS
/cast Dreadnaught

[ANGER MANAG]
@bind CTRL-SHIFT-LBRACKET
/cast Anger Management

[IMPRO SWEEP]
@bind CTRL-SHIFT-RBRACKET
/cast Improved Sweeping Strikes

[SHARP BLADE2]
@bind CTRL-SHIFT-BACKSLASH
/cast Sharpened Blades

[BERSE RAGE]
@bind CTRL-SHIFT-SEMICOLON
/cast Berserker Rage

[VICTO RUSH]
@bind CTRL-SHIFT-APOSTROPHE
/cast Victory Rush

[FROZE BINDS]
@bind CTRL-SHIFT-COMMA
/cast Frozen Binds

[SANGUINE]
@bind CTRL-SHIFT-PERIOD
/cast Sanguine

[SATED]
@bind CTRL-SHIFT-SLASH
/cast Sated

[SBA]
@bind CTRL-SHIFT-GRAVE
/cast SBA

[BLESS OF]
@bind ALT-SHIFT-BUTTON3
/cast Blessing of Protection

[DARK PACT]
@bind ALT-SHIFT-BUTTON4
/cast Dark Pact

[COMBUSTI]
@bind ALT-SHIFT-BUTTON5
/cast Combustion

[ICY VEINS]
@bind ALT-SHIFT-BUTTON6
/cast Icy Veins

[ALTER TIME]
@bind ALT-SHIFT-BUTTON7
/cast Alter Time

[ARCAN POWER]
@bind ALT-SHIFT-BUTTON8
/cast Arcane Power

[DIVIN FAVOR]
@bind ALT-SHIFT-BUTTON9
/cast Divine Favor

[BLESS OF2]
@bind ALT-SHIFT-BUTTON10
/cast Blessing of Freedom

[POWER INFUS]
@bind ALT-SHIFT-BUTTON11
/cast Power Infusion

[SURVI TACTI]
@bind ALT-SHIFT-BUTTON12
/cast Survival Tactics

[CLOAK OF]
@bind ALT-SHIFT-BUTTON13
/cast Cloak of Shadows

[REFLECT2]
@bind ALT-SHIFT-BUTTON14
/cast Reflect

[DEVOU PLAGU]
@bind ALT-SHIFT-BUTTON15
/cast Devouring Plague

[ASPEC OF]
@bind ALT-SHIFT-BUTTON16
/cast Aspect of the Turtle

[DIVIN SHIEL]
@bind ALT-SHIFT-BUTTON17
/cast Divine Shield

[ICE BLOCK]
@bind ALT-SHIFT-BUTTON18
/cast Ice Block

[SLAUGHTE]
@bind ALT-SHIFT-BUTTON19
/cast Slaughterhouse

[DEATH SENTE]
@bind ALT-SHIFT-BUTTON20
/cast Death Sentence

[BATTL TRANC]
@bind ALT-SHIFT-BUTTON21
/cast Battle Trance

[BARBARIA]
@bind ALT-SHIFT-BUTTON22
/cast Barbarian

#general

[GEN TARGETMO]
@bind ALT-SHIFT-BUTTON23
/target mouseover

[GEN TARGETEN]
@bind ALT-SHIFT-BUTTON24
/targetenemy

[GEN TARGETLA]
@bind ALT-SHIFT-BUTTON25
/targetlasttarget

[GEN MACRO A1 TGT]
@bind ALT-SHIFT-BUTTON26
/target arena1

[GEN MACRO A2 TGT]
@bind ALT-SHIFT-BUTTON27
/target arena2

[GEN MACRO A3 TGT]
@bind ALT-SHIFT-BUTTON28
/target arena3

[GEN MACRO A4 TGT]
@bind ALT-SHIFT-BUTTON29
/target arena4

[GEN MACRO A5 TGT]
@bind ALT-SHIFT-BUTTON30
/target arena5

[GEN MACRO A1 FOC]
@bind CTRL-SHIFT-BUTTON3
/focus arena1

[GEN MACRO A2 FOC]
@bind CTRL-SHIFT-BUTTON4
/focus arena2

[GEN MACRO A3 FOC]
@bind CTRL-SHIFT-BUTTON5
/focus arena3

[GEN MACRO A4 FOC]
@bind CTRL-SHIFT-BUTTON6
/focus arena4

[GEN MACRO A5 FOC]
@bind CTRL-SHIFT-BUTTON7
/focus arena5

[GEN PLAYER FOC]
@bind CTRL-SHIFT-BUTTON8
/focus player

[GEN STOPCAST]
@bind CTRL-SHIFT-BUTTON9
/stopcasting

[GEN STARTATT]
@bind CTRL-SHIFT-BUTTON10
/startattack [@mouseover,harm][@targettarget,harm][]
/petattack [@mouseover,harm][]

[GEN TRINKET1]
@bind CTRL-SHIFT-BUTTON11
/use 13

[GEN TRINKET2]
@bind CTRL-SHIFT-BUTTON12
/use 14

[GEN HEALTHST]
@bind CTRL-SHIFT-BUTTON13
/use Fel Healthstone
/use Demonic Healthstone
/use Master Healthstone
/use Major Healthstone
/use Greater Healthstone
/use Healthstone
/use Lesser Healthstone
/use Minor Healthstone

[GEN HEALINGP]
@bind CTRL-SHIFT-BUTTON14
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
@bind CTRL-SHIFT-BUTTON15
/use item:11951

[GEN SBA]
@bind CTRL-SHIFT-BUTTON16
/cast Single-Button Assistant
]==]
