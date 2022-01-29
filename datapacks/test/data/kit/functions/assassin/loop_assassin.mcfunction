###########################     Coup spécial    ####################################

clear @s[scores={coup_special=1}] minecraft:warped_fungus_on_a_stick



effect give @s[scores={coup_special=1}] resistance 5 2 true

execute as @s[scores={coup_special=1}] at @s run playsound ssl:assassin.ult ambient @a ~ ~ ~ 2

execute as @s[scores={coup_special=1}] run function kit:clear_player


item replace entity @s[scores={coup_special=2}] weapon.offhand with minecraft:carrot_on_a_stick{CustomModelData:26,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.0 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.4 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.5 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.6 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.7 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1
item replace entity @s[scores={coup_special=2}] container.8 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"]} 1


execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Pistolet"]}}},scores={coup_special=1..150}] unless entity @s[scores={reloadBalle=1..}] run scoreboard players set @s reloadBalle 5


execute as @s[scores={reloadBalle=5}] at @s run playsound ssl:assassin.pistol ambient @a ~ ~ ~ 0.5
execute as @s[scores={reloadBalle=5}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BalleAssassin","Projectile"],Duration:10000}
execute as @s[scores={reloadBalle=5}] at @s run scoreboard players operation @e[sort=nearest,tag=BalleAssassin,limit=1] player = @s player
execute as @s[scores={reloadBalle=5}] at @s run tp @e[sort=nearest,tag=BalleAssassin,limit=1] ~ ~1 ~ ~ ~





scoreboard players remove @s[scores={reloadBalle=1..}] reloadBalle 1


clear @s[scores={coup_special=150}] minecraft:carrot_on_a_stick{Tags:["Pistolet"]}
execute as @s[scores={coup_special=150}] run function kit:assassin/give_assassin
scoreboard players reset @s[scores={coup_special=150}] coup_special

scoreboard players add @s[scores={coup_special=1..}] coup_special 1


###########################     Compétence 1    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Poignarder"]}}},scores={competences=1}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:carrot_on_a_stick{Tags:["Poignarder"]} 1

scoreboard players set @s[scores={competence1=1}] rechargement1 100

scoreboard players set @s[scores={competence1=1,competence2=1..}] competence2 100


execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] positioned ^ ^ ^-0.8 run scoreboard players operation @s detect_kill = @p player

execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s positioned ^ ^ ^-0.8 unless entity @a[distance=..1,scores={assassin=1}] positioned ^ ^ ^0.8 run particle minecraft:block redstone_block ~ ~1 ~ 0 0 0 1 10
execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s positioned ^ ^ ^-0.8 if entity @a[distance=..1,scores={assassin=1}] positioned ^ ^ ^0.8 run particle minecraft:block redstone_block ~ ~1 ~ 0 0 0 1 100

execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s positioned ^ ^ ^-0.8 unless entity @a[distance=..1,scores={assassin=1}] run playsound ssl:assassin.coup_lame ambient @a ~ ~ ~ 1 1
execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s positioned ^ ^ ^-0.8 if entity @a[distance=..1,scores={assassin=1}] run playsound ssl:assassin.coup_lame ambient @a ~ ~ ~ 1 0.7

#execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s run particle minecraft:block redstone_block ~ ~1 ~ 0 0 0 1 100
#execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s run playsound ssl:assassin.coup_lame ambient @a
execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s positioned ^ ^ ^-0.8 unless entity @a[distance=..1,scores={assassin=1}] run effect give @s instant_damage 1 1 true
execute as @s[scores={competence1=1}] at @s as @e[distance=..2] unless score @p player = @s player positioned ^ ^ ^0.8 if entity @s[distance=..1] at @s positioned ^ ^ ^-0.8 if entity @a[distance=..1,scores={assassin=1}] run effect give @s instant_damage 1 2 true


item replace entity @s[scores={competence1=1..,rechargement1=0}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:21,display:{Lore:['[{"text":"Poignarder"}]'],Name:'[{"text":"Poignarder"}]'},Tags:["Poignarder"]} 1

scoreboard players reset @s[scores={competence1=1}] competences
scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1

scoreboard players add @s[scores={competence1=1..}] competence1 1


###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Invisible"]}}},scores={competences=1}] at @s run scoreboard players add @s competence2 1
clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["Invisible"]} 1

scoreboard players set @s[scores={competence2=1}] rechargement2 200

execute as @s[scores={competence2=1}] at @s as @a unless score @s player = @p player run playsound ssl:assassin.invisible ambient @s
execute as @s[scores={competence2=1}] at @s run playsound ssl:assassin.pendant_invisible ambient @s
effect give @s[scores={competence2=1}] invisibility 5 1 true
effect give @s[scores={competence2=1}] speed 5 1 true
item replace entity @s[scores={competence2=1}] armor.feet with air

scoreboard players set @s[scores={competence2=1..100,damage=1..}] competence2 100
execute as @s[scores={competence2=1..100,damage=1..}] at @s run playsound ssl:assassin.sort_lame ambient @a
execute as @s[scores={competence2=1..100,damage=1..}] at @s as @a[distance=..5,limit=2,sort=nearest] unless score @p player = @s player unless entity @s[scores={stun=20..}] run scoreboard players set @s stun 20

execute as @s[scores={competence2=1..100}] at @s as @a[distance=1..] facing entity @s eyes positioned ~ ~0.5 ~ run particle minecraft:electric_spark ^ ^ ^2 0 0 0 0 1 force @p

stopsound @s[scores={competence2=100}] * ssl:assassin.pendant_invisible
execute as @s[scores={competence2=100}] at @s unless entity @s[scores={damage=1..}] as @a unless score @p player = @s player run playsound ssl:assassin.fin_invisible ambient @s
effect clear @s[scores={competence2=100}] speed
effect clear @s[scores={competence2=100}] invisibility
item replace entity @s[scores={competence2=100}] armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:30s},{id:"minecraft:binding_curse",lvl:1s}]} 1

item replace entity @s[scores={competence2=1..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:20,display:{Lore:['[{"text":"Invisible"}]'],Name:'[{"text":"Invisible"}]'},Tags:["Invisible"]} 1



scoreboard players reset @s[scores={competence2=1}] competences
scoreboard players reset @s[scores={competence2=1..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1


###########################     Compétence 3    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Fouet"]}}},scores={competences=1}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competences=1..,competence3=1}] minecraft:carrot_on_a_stick{Tags:["Fouet"]} 1


scoreboard players set @s[scores={competence3=1}] rechargement3 80


execute as @s[scores={competence3=1}] at @s run playsound ssl:assassin.lancement_fouet ambient @a
execute as @s[scores={competence3=1}] at @s run summon cat ~ ~ ~ {Tags:["FouetAssassin","Projectile"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000,ShowParticles:0b}]}
execute as @s[scores={competence3=1}] at @s run scoreboard players operation @e[sort=nearest,tag=FouetAssassin,limit=1] player = @s player


execute as @s[scores={competence3=1}] at @s run tp @e[sort=nearest,tag=FouetAssassin,limit=1] ~ ~ ~ ~ ~
execute as @s[scores={competence3=1}] at @s as @e[sort=nearest,tag=FouetAssassin,limit=1] at @s rotated as @p run function kit:assassin/fouet



execute as @s[scores={competence3=3..60}] at @s as @e[tag=FouetAssassin,nbt={OnGround:1b}] if score @s player = @p player run scoreboard players set @p competence3 60
#execute as @s[scores={competence3=3..60}] at @s as @e[tag=FouetAssassin,nbt={OnGround:1b}] if score @s player = @p player at @s as @a if score @e[tag=FouetAssassin,limit=1,sort=nearest] player = @s player run tp @s ~ ~ ~
execute as @s[scores={competence3=3..60}] at @s as @e[tag=FouetAssassin,nbt={OnGround:1b}] if score @s player = @p player at @s run summon area_effect_cloud ~ ~ ~ {Tags:["MoveAssassin"],Duration:1000}
execute as @s[scores={competence3=3..60}] at @s as @e[tag=FouetAssassin,nbt={OnGround:1b}] if score @s player = @p player at @s run scoreboard players operation @e[tag=MoveAssassin,sort=nearest,limit=1] player = @e[tag=FouetAssassin,limit=1,sort=nearest] player


execute as @s at @s if entity @s[scores={crouch=1..}] as @e[tag=MoveAssassin] if score @s player = @p player run kill @s


execute at @s as @e[tag=MoveAssassin] if score @s player = @p player facing entity @s eyes as @a if score @e[tag=MoveAssassin,sort=nearest,limit=1] player = @s player run tp @s ^ ^ ^2
execute at @s as @e[tag=MoveAssassin] if score @s player = @p player run effect give @p slow_falling 1 1 true
execute at @s as @e[tag=MoveAssassin] if score @s player = @p player at @s as @a[distance=..1] if score @s player = @e[tag=MoveAssassin,limit=1,sort=nearest] player run tp @s ~ ~ ~
execute at @s as @e[tag=MoveAssassin] if score @s player = @p player at @s as @a[distance=..1] if score @s player = @e[tag=MoveAssassin,limit=1,sort=nearest] player run kill @e[tag=MoveAssassin,limit=1,sort=nearest]

execute at @s as @a if score @s TpAssassin = @p player at @s as @a if score @p TpAssassin = @s player facing entity @s feet run tp @p ^ ^ ^1
execute at @s as @a if score @s TpAssassin = @p player run effect give @s slow_falling 1 1 true


execute at @s as @a if score @s TpAssassin = @p player at @s as @a[distance=..1] if score @p TpAssassin = @s player run scoreboard players reset @p TpAssassin


execute as @s[scores={competence3=1..60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player at @s as @a[distance=..1.5] unless score @s player = @e[tag=FouetAssassin,limit=1,sort=nearest] player at @s run playsound ssl:assassin.hit_fouet ambient @a
execute as @s[scores={competence3=1..60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player at @s as @a[distance=..1.5] unless score @s player = @e[tag=FouetAssassin,limit=1,sort=nearest] player run effect give @s instant_damage 1 1 true
execute as @s[scores={competence3=1..60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player at @s as @a[distance=..1.5] unless score @s player = @e[tag=FouetAssassin,limit=1,sort=nearest] player run scoreboard players operation @s detect_kill = @e[tag=FouetAssassin,limit=1,sort=nearest] player
execute as @s[scores={competence3=1..60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player at @s as @a[distance=..1.5] unless score @s player = @e[tag=FouetAssassin,limit=1,sort=nearest] player run scoreboard players operation @s TpAssassin = @e[tag=FouetAssassin,limit=1,sort=nearest] player
execute as @s[scores={competence3=1..60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player at @s as @a[distance=..1.5] unless score @s player = @e[tag=FouetAssassin,limit=1,sort=nearest] player as @a if score @s player = @e[tag=FouetAssassin,limit=1,sort=nearest] player run scoreboard players set @s competence3 60

execute as @s[scores={competence3=1..60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player at @s run particle smoke ~ ~ ~ 0.1 0.1 0.1 0 10


execute as @s[scores={competence3=60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player run tp @s 0 0 0
execute as @s[scores={competence3=60}] at @s as @e[tag=FouetAssassin] if score @s player = @p player run kill @s








scoreboard players reset @s[scores={competence3=1}] competences
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:22,display:{Lore:['[{"text":"Fouet"}]'],Name:'[{"text":"Fouet"}]'},Tags:["Fouet"]} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3

