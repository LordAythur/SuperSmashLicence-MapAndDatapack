execute as @s[scores={jumpMario=1..,mario=1}] at @s run scoreboard players add @s timeJumpMario 1
execute as @s[scores={jumpMario=2,mario=1}] at @s run effect give @s jump_boost 1 5 true

execute as @s[scores={jumpMario=3..}] at @s run playsound ssl:mario.jump ambient @a[distance=..10] ~ ~ ~ 0.1 1
scoreboard players set @s[scores={jumpMario=3..}] jumpMario 0
scoreboard players set @s[scores={timeJumpMario=20..,jumpMario=1}] jumpMario 0
scoreboard players set @s[scores={timeJumpMario=20..,jumpMario=0}] timeJumpMario 0
effect clear @s[scores={timeJumpMario=40..,jumpMario=2}] jump_boost
scoreboard players set @s[scores={timeJumpMario=40..,jumpMario=2}] jumpMario 0
scoreboard players set @s[scores={timeJumpMario=40..}] timeJumpMario 0

###########################     Coup spécial    ####################################

clear @s[scores={coup_special=1}] minecraft:warped_fungus_on_a_stick

effect give @s[scores={coup_special=1}] resistance 6 100 true
scoreboard players set @s[scores={coup_special=1}] stun 100

execute as @s[scores={coup_special=1,mario=1}] at @s run playsound ssl:mario.final ambient @a[distance=..10] ~ ~ ~ 2 1




execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^ ^1 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^ ^3 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^ ^-1 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^2 ^1 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^-2 ^1 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^-2 ^-1 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^2 ^-1 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^-2 ^3 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}
execute as @s[scores={coup_special=1}] at @s run summon armor_stand ^2 ^3 ^ {Tags:["UltMario"],Invisible:1b,NoGravity:1b}


execute as @s[scores={coup_special=1}] at @s as @e[tag=UltMario,distance=..4] at @s rotated as @p[scores={coup_special=1,mario=1}] run tp @s ^ ^ ^ ~ ~
execute as @s[scores={coup_special=1}] at @s run scoreboard players operation @e[tag=UltMario,distance=..4] player = @s player


execute as @s[scores={coup_special=1..150}] at @s as @e[tag=UltMario] if score @p player = @s player at @s if entity @p[distance=..50] run summon minecraft:creeper ~ ~2 ~ {Fuse:1,ignited:1b,Invulnerable:1b,ExplosionRadius:3b}










execute as @s[scores={coup_special=..150}] at @s as @e[tag=UltMario] if score @p player = @s player at @s run tp @s ^ ^ ^0.7

execute as @s[scores={coup_special=150}] at @s as @e[tag=UltMario] if score @p player = @s player at @s run kill @s

scoreboard players reset @s[scores={coup_special=150}] coup_special


scoreboard players add @s[scores={coup_special=1..}] coup_special 1


###########################     Compétence 1    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Fire"]}}},scores={competences=1}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:carrot_on_a_stick{Tags:["Fire"]} 1

scoreboard players set @s[scores={competence1=1}] rechargement1 200

item replace entity @s[scores={competence1=1}] container.0 with red_tulip{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:fire_aspect",lvl:1s}],CustomModelData:1,display:{Lore:['[{"text":"FLOWER POWER"}]'],Name:'[{"text":"FLOWER POWER"}]'},Tags:["FLOWER POWER"]} 1

execute as @s[scores={competence1=1}] at @s run playsound ssl:mario.powerup ambient @a[distance=..10] ~ ~ ~ 1 1

clear @s[scores={competence1=100}] minecraft:red_tulip{Tags:["FLOWER POWER"]} 1

item replace entity @s[scores={competence1=1..,rechargement1=0}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:14,display:{Lore:['[{"text":"Fire"}]'],Name:'[{"text":"Fire"}]'},Tags:["Fire"]} 1

scoreboard players reset @s[scores={competence1=1}] competences
scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1

scoreboard players add @s[scores={competence1=1..}] competence1 1


###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Twomp"]}}},scores={competences=1}] at @s run scoreboard players add @s competence2 1

execute as @s[scores={competence2=1}] at @s unless block ~ ~-1 ~ air run scoreboard players reset @s competences
execute as @s[scores={competence2=1}] at @s unless block ~ ~-2 ~ air run scoreboard players reset @s competences
execute as @s[scores={competence2=1}] at @s unless block ~ ~-3 ~ air run scoreboard players reset @s competences

execute as @s[scores={competence2=1}] at @s unless block ~ ~-1 ~ air run scoreboard players reset @s competence2
execute as @s[scores={competence2=1}] at @s unless block ~ ~-2 ~ air run scoreboard players reset @s competence2
execute as @s[scores={competence2=1}] at @s unless block ~ ~-3 ~ air run scoreboard players reset @s competence2

execute as @s[scores={competence2=1}] at @s run playsound ssl:mario.cappy ambient @a[distance=..10] ~ ~ ~ 0.5 1


clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["Twomp"]} 1

scoreboard players set @s[scores={competence2=1}] rechargement2 200


gamemode spectator @s[scores={competence2=1}]
execute as @s[scores={competence2=1}] at @s run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["Twomp"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:98}},{}],Pose:{LeftArm:[360f,90f,0f],RightArm:[360f,90f,0f]}}
execute as @s[scores={competence2=1}] at @s run tp @e[tag=Twomp,sort=nearest,limit=1] ^0.5 ^ ^ ~ ~
execute as @s[scores={competence2=1}] at @s run scoreboard players operation @e[tag=Twomp,sort=nearest,limit=1] player = @s player

execute as @s[scores={competence2=1..80}] at @s as @e[tag=Twomp] if score @s player = @p player at @s as @a[scores={mario=1}] if score @s player = @e[tag=Twomp,sort=nearest,limit=1] player run tp @s ^-0.5 ^ ^

execute as @s[scores={competence2=2..60}] at @s as @e[tag=Twomp] if score @s player = @p player if entity @s[nbt={OnGround:1b}] run scoreboard players set @p competence2 60

execute as @s[scores={competence2=60}] at @s run playsound ssl:mario.thwomp ambient @a[distance=..10] ~ ~ ~ 1 1

execute as @s[scores={competence2=60}] at @s as @e[tag=Twomp] if score @s player = @p player if entity @s[nbt={OnGround:1b}] run summon minecraft:creeper ~ ~2 ~ {Fuse:1,ignited:1b,Invulnerable:1b,ExplosionRadius:3b}
execute as @s[scores={competence2=60}] at @s as @e[tag=Twomp] if score @s player = @p player at @s as @a[distance=..1] unless score @s player = @p player run effect give @s instant_damage 1 1 true

execute as @s[scores={competence2=80}] at @s as @e[tag=Twomp] if score @s player = @p player run kill @s
gamemode adventure @s[scores={competence2=80}]

item replace entity @s[scores={competence2=1..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:13,display:{Lore:['[{"text":"Twomp"}]'],Name:'[{"text":"Twomp"}]'},Tags:["Twomp"]} 1

scoreboard players reset @s[scores={competence2=1}] competences
scoreboard players reset @s[scores={competence2=1..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1

###########################     Compétence 3    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Bill Balle"]}}},scores={competences=1}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competences=1..,competence3=1}] minecraft:carrot_on_a_stick{Tags:["Bill Balle"]} 1


scoreboard players set @s[scores={competence3=1}] rechargement3 300

execute as @s[scores={competence3=1}] at @s run playsound ssl:mario.bill_ball_in ambient @s ~ ~ ~ 0.5 1
execute as @s[scores={competence3=1}] at @s run playsound ssl:mario.cappy ambient @a[distance=..10] ~ ~ ~ 0.5 1


execute as @s[scores={competence3=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["BillBalle"],Invisible:1b,ShowArms:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:99}},{}]}
execute as @s[scores={competence3=1}] at @s run scoreboard players operation @e[tag=BillBalle,type=armor_stand,limit=1,sort=nearest] player = @s player
gamemode spectator @s[scores={competence3=1}]

effect give @s[scores={competence3=1}] levitation 5 0 true



execute as @s[scores={competence3=1..100}] at @s as @e[tag=BillBalle] at @s rotated as @p if score @s player = @p player run tp @s ~ ~ ~ ~ ~
execute as @s[scores={competence3=1..100}] at @s as @e[tag=BillBalle] if score @s player = @p player at @s run tp @s ^ ^ ^0.5

execute as @s[scores={competence3=1..100}] at @s as @e[tag=BillBalle] if score @s player = @p player at @s as @a if score @s player = @e[tag=BillBalle,sort=nearest,limit=1] player run tp @s ~ ~ ~

execute as @s[scores={competence3=1..100}] at @s as @e[tag=BillBalle] if score @s player = @p player at @s run particle smoke ~ ~1 ~ 0.1 0.1 0.1 0 10 force


execute as @s[scores={competence3=5..100}] at @s unless block ~ ~1 ~ air run scoreboard players set @s competence3 100
execute as @s[scores={competence3=5..100}] at @s unless score @a[distance=..1,sort=furthest,limit=1] player = @p player run scoreboard players set @p competence3 100

effect give @s[scores={competence3=100}] resistance 1 255 true
execute as @s[scores={competence3=100}] at @s run stopsound @s * ssl:mario.bill_ball_in
execute as @s[scores={competence3=100}] at @s run playsound ssl:mario.bill_ball_end ambient @a[distance=..10] ~ ~ ~
execute as @s[scores={competence3=100}] at @s unless block ~ ~1 ~ air run summon minecraft:creeper ~ ~2 ~ {Fuse:1,ignited:1b,Invulnerable:1b,ExplosionRadius:3b}
execute as @s[scores={competence3=100}] at @s unless score @a[distance=..1,sort=furthest,limit=1] player = @p player run summon minecraft:creeper ~ ~2 ~ {Fuse:1,ignited:1b,Invulnerable:1b,ExplosionRadius:2b}
execute as @s[scores={competence3=100}] at @s run tp @s ~ ~2 ~

effect clear @s[scores={competence3=100}] levitation
gamemode adventure @s[scores={competence3=100}]
item replace entity @s[scores={competence3=100}] armor.head with minecraft:golden_helmet{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]} 1



execute as @s[scores={competence3=100}] at @s as @e[tag=BillBalle] if score @s player = @p player at @s run kill @s

item replace entity @s[scores={competence3=110}] armor.head with air 1

scoreboard players reset @s[scores={competence3=1}] competences
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:12,display:{Lore:['[{"text":"Bill Balle"}]'],Name:'[{"text":"Bill Balle"}]'},Tags:["Bill Balle"]} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3

###########################         PASSIF          #################################


effect give @s strength 25555 1 true