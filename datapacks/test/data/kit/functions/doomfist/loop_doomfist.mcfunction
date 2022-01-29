###########################     Coup spécial    ####################################

clear @a[scores={coup_special=1,Doomfist=1}] minecraft:warped_fungus_on_a_stick

execute as @a[scores={coup_special=1..20,Doomfist=1}] at @s run particle minecraft:flame ~ ~ ~ 1 0.1 1 0 100
execute as @a[scores={coup_special=1,Doomfist=1}] at @s run playsound ssl:doomfist.ult ambient @a
effect give @a[scores={coup_special=20,Doomfist=1}] levitation 1 25 true
effect give @a[scores={coup_special=30,Doomfist=1}] invisibility 7 0 true
gamemode spectator @a[scores={coup_special=30,Doomfist=1}]
execute as @a[scores={coup_special=30..150,Doomfist=1}] run function kit:clear_player
execute as @a[scores={coup_special=30..150,Doomfist=1}] at @s run kill @e[type=item,distance=..2]


execute as @a[scores={coup_special=40..120,Doomfist=1}] at @s positioned ^ ^ ^1 positioned ~ ~1 ~ if entity @s[distance=..0.01] run scoreboard players set @s coup_special 120 

execute as @a[scores={coup_special=55,Doomfist=1}] at @s run playsound ssl:doomfist.pendant_ult neutral @s ~ ~ ~ 1

title @a[scores={coup_special=40,Doomfist=1}] title {"text":"4","bold":true,"color":"dark_red"}
title @a[scores={coup_special=60,Doomfist=1}] title {"text":"3","bold":true,"color":"dark_red"}
title @a[scores={coup_special=80,Doomfist=1}] title {"text":"2","bold":true,"color":"dark_red"}
title @a[scores={coup_special=100,Doomfist=1}] title {"text":"1","bold":true,"color":"dark_red"}
title @a[scores={coup_special=120,Doomfist=1}] title {"text":""}
stopsound @a[scores={coup_special=120,Doomfist=1}] * ssl:doomfist.pendant_ult

execute as @a[scores={coup_special=120,Doomfist=1}] at @s run playsound ssl:doomfist.fin_ult neutral @a ~ ~ ~ 3

gamemode adventure @a[scores={coup_special=150,Doomfist=1}]

execute as @a[scores={coup_special=120,Doomfist=1}] at @s run particle minecraft:end_rod ~ ~ ~ 0.05 5 0.05 0 100 force @a
execute as @a[scores={coup_special=120,Doomfist=1}] at @s run particle minecraft:dolphin ~ ~ ~ 2 3 2 1 100000 force @a

execute as @a[scores={coup_special=120,Doomfist=1}] unless entity @s[scores={stun=20..}] run scoreboard players set @s stun 40


execute as @a[scores={coup_special=120,Doomfist=1}] at @s as @a[distance=..10] unless score @s player = @p player run scoreboard players set @s stun 15


execute as @a[scores={coup_special=140,Doomfist=1}] at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:7b,Invulnerable:1b}
execute as @a[scores={coup_special=140,Doomfist=1}] at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:7b,Invulnerable:1b}
execute as @a[scores={coup_special=140,Doomfist=1}] at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:7b,Invulnerable:1b}
execute as @a[scores={coup_special=140,Doomfist=1}] at @s as @a[distance=..10] unless score @s player = @p player run scoreboard players operation @s detect_kill = @p player




execute as @a[scores={coup_special=150,Doomfist=1}] run function kit:doomfist/give_doomfist

scoreboard players set @a[scores={coup_special=150,Doomfist=1}] coup_special 0


scoreboard players add @a[scores={coup_special=1..,Doomfist=1}] coup_special 1


###########################     Compétence 1    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Doomfist Buff"]}}},scores={competences=1,Doomfist=1}] at @s run scoreboard players add @s competence1 1
clear @a[scores={competence1=1,Doomfist=1}] minecraft:carrot_on_a_stick{Tags:["Doomfist Buff"]} 1

scoreboard players set @a[scores={competence1=1,Doomfist=1}] rechargement1 200

execute as @a[scores={competence1=1,Doomfist=1}] at @s run playsound ssl:doomfist.chargement ambient @a ~ ~ ~ 1 1.1
execute as @a[scores={competence1=1,Doomfist=1}] run item replace entity @s container.0 with minecraft:golden_sword{CustomModelData:1,display:{Lore:['[{"text":"Doomfist Punch"}]'],Name:'[{"text":"Epee"}]'},Tags:["Doomfist Punch"],HideFlags:7,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;-1465304548,-1039381548,-1771388935,937623695]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1
scoreboard players reset @a[scores={competence1=1,Doomfist=1}] tape_epee_gold
effect give @a[scores={competence1=1,Doomfist=1}] speed 3 3 true
execute as @a[scores={competence1=1,Doomfist=1}] at @s run particle minecraft:angry_villager ~ ~2 ~ 0.2 0 0.2 0.2 10

scoreboard players set @a[scores={competence1=1..60,Doomfist=1,tape_epee_gold=1}] competence1 60
effect clear @a[scores={competence1=60,Doomfist=1}] speed
execute as @a[scores={competence1=60,Doomfist=1}] run item replace entity @s container.0 with minecraft:golden_sword{CustomModelData:1,display:{Lore:['[{"text":"Doomfist Punch"}]'],Name:'[{"text":"Epee"}]'},Tags:["Doomfist Punch"],HideFlags:7,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1763416271,1976258288,-1396455771,362432457],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1

item replace entity @a[scores={competence1=1..,rechargement1=0,Doomfist=1}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:9,display:{Lore:['[{"text":"Doomfist Buff"}]'],Name:'[{"text":"Cours et tape :b"}]'},Tags:["Doomfist Buff"]} 1

scoreboard players reset @a[scores={competence1=1,Doomfist=1}] competences
scoreboard players reset @a[scores={competence1=1..,rechargement1=0,Doomfist=1}] competence1

scoreboard players add @a[scores={competence1=1..,Doomfist=1}] competence1 1



###########################     Compétence 2    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Doomfist Up"]}}},scores={competences=1,Doomfist=1}] at @s run scoreboard players add @s competence2 1
clear @a[scores={competences=1..,competence2=1,Doomfist=1}] minecraft:carrot_on_a_stick{Tags:["Doomfist Up"]} 1

scoreboard players set @a[scores={competence2=1,Doomfist=1}] rechargement2 100

execute as @a[scores={competence2=1,Doomfist=1}] at @s run playsound ssl:doomfist.upercut ambient @a
execute as @a[scores={competence2=1,Doomfist=1}] at @s run function kit:doomfist/particle_upercut
execute as @a[scores={competence2=1,Doomfist=1}] at @s run tp @s ~ ~ ~ ~ 0
execute as @a[scores={competence2=1,Doomfist=1}] at @s positioned ^ ^ ^2.1 positioned ~ ~ ~ run effect give @e[distance=..2] minecraft:instant_damage 1 1 true
execute as @a[scores={competence2=1,Doomfist=1}] at @s positioned ^ ^ ^2.1 positioned ~ ~ ~ run scoreboard players set @e[distance=..2] flyUper 1
execute as @a[scores={competence2=1,Doomfist=1}] at @s positioned ^ ^ ^2.1 positioned ~ ~ ~ as @a[distance=..2] unless score @p player = @s player run scoreboard players operation @s detect_kill = @p player

effect give @a[scores={flyUper=1}] minecraft:levitation 1 20 true
effect clear @a[scores={flyUper=5}] minecraft:levitation
scoreboard players reset @a[scores={flyUper=5}] flyUper
scoreboard players add @a[scores={flyUper=1..}] flyUper 1

effect give @a[scores={competence2=1,Doomfist=1}] minecraft:levitation 1 20 true
effect clear @a[scores={competence2=10,Doomfist=1}] minecraft:levitation
execute as @a[scores={competence2=2..5,Doomfist=1}] at @s run tp @s ~ ~ ~ ~ ~-15

item replace entity @a[scores={competence2=1..,rechargement2=0,Doomfist=1}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:10,display:{Lore:['[{"text":"Doomfist Up"}]'],Name:'[{"text":"Upercut"}]'},Tags:["Doomfist Up"]} 1

scoreboard players reset @a[scores={competences=1..,competence2=1,Doomfist=1}] competences
scoreboard players reset @a[scores={competence2=1..,rechargement2=0,Doomfist=1}] competence2

scoreboard players add @a[scores={competence2=1..,Doomfist=1}] competence2 1


###########################     Compétence 3    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Doomfist Q"]}}},scores={competences=1,Doomfist=1}] at @s run scoreboard players add @s competence3 1
clear @a[scores={competences=1..,competence3=1,Doomfist=1}] minecraft:carrot_on_a_stick{Tags:["Doomfist Q"]} 1

execute as @a[scores={competences=1..,competence3=1,Doomfist=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["poingDoomfist"],Invisible:1b}
execute as @a[scores={competences=1..,competence3=1,Doomfist=1}] at @s run scoreboard players add @e[sort=nearest,tag=poingDoomfist,limit=1] timepoing 1
scoreboard players set @a[scores={competences=1..,competence3=1,Doomfist=1}] rechargement3 200

execute as @e[scores={timepoing=1}] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @e[scores={timepoing=1}] at @s rotated as @p run function kit:doomfist/initialisation_competence3


scoreboard players add @e[scores={timepoing=1..}] timepoing 1
execute as @e[scores={timepoing=1..20}] at @s rotated as @p run function kit:doomfist/competence3

effect give @a[scores={competence3=1,Doomfist=1}] minecraft:slow_falling 255 0 true
execute as @a[scores={competence3=1,Doomfist=1}] at @s run playsound ssl:doomfist.dash neutral @a ~ ~ ~ 2

execute as @a[scores={competence3=1..19,Doomfist=1}] at @s as @p[sort=nearest,distance=1..2] run effect give @p[scores={Doomfist=1}] resistance 1 255 true
execute as @a[scores={competence3=1..19,Doomfist=1}] at @s as @p[sort=nearest,distance=1..2] at @s facing entity @p[scores={competence3=1..,Doomfist=1}] feet positioned ~ ~1 ~ run summon minecraft:creeper ^ ^ ^0.8 {Fuse:1,ignited:1b,Invulnerable:1b,ExplosionRadius:2b}
execute as @a[scores={competence3=1..19,Doomfist=1}] at @s as @p[sort=nearest,distance=1..2] at @s facing entity @p[scores={competence3=1..,Doomfist=1}] feet positioned ~ ~1 ~ run summon minecraft:creeper ^ ^ ^0.8 {Fuse:1,ignited:1b,Invulnerable:1b,ExplosionRadius:1b}
execute as @a[scores={competence3=1..19,Doomfist=1}] at @s as @a[distance=..2] unless score @p player = @s player run scoreboard players operation @s detect_kill = @p player

execute as @a[scores={competence3=1..19,Doomfist=1}] at @s as @p[sort=nearest,distance=1..2] run scoreboard players set @p[scores={competence3=1..,Doomfist=1}] competence3 19

item replace entity @a[scores={competence3=1,Doomfist=1}] armor.head with minecraft:golden_helmet{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]} 1
item replace entity @a[scores={competence3=25,Doomfist=1}] armor.head with air 1

scoreboard players reset @a[scores={competences=1..,competence3=1,Doomfist=1}] competences
scoreboard players add @a[scores={competence3=1..,Doomfist=1}] competence3 1

execute as @e[scores={timepoing=1..}] at @s run tp @p[scores={Doomfist=1}] ~ ~ ~ ~ ~
execute as @a[scores={competence3=20,Doomfist=1}] at @s run kill @e[type=armor_stand,sort=nearest,limit=1,scores={timepoing=1..}]
execute as @a[scores={competence3=20,Doomfist=1}] at @s run tp @s ^ ^ ^-0.2

effect clear @a[scores={competence3=20,Doomfist=1}] minecraft:slow_falling
item replace entity @a[scores={competence3=1..,rechargement3=0,Doomfist=1}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:11,display:{Lore:['[{"text":"Doomfist Q"}]'],Name:'[{"text":"Fonce devant"}]'},Tags:["Doomfist Q"]} 1
scoreboard players reset @a[scores={competence3=1..,rechargement3=0,Doomfist=1}] competence3

