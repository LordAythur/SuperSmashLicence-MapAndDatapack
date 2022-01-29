###########################     Coup spécial    ####################################

clear @s[scores={coup_special=1}] minecraft:warped_fungus_on_a_stick

effect give @s strength 255555 0 true

#spreadplayers ~ ~ 1 2 false @e[type=minecraft:creeper]

execute as @s[scores={coup_special=1}] at @s run function kit:clear_player


execute as @s[scores={coup_special=120}] at @s run summon armor_stand ~ ~10 ~ {Tags:["SpecialGoku"],Invisible:1b}
execute as @s[scores={coup_special=120}] at @s positioned ~ ~10 ~ rotated as @s run scoreboard players operation @e[limit=1,sort=nearest,tag=SpecialGoku] player = @s player
execute as @s[scores={coup_special=120}] at @s positioned ~ ~10 ~ rotated as @s run tp @e[limit=1,sort=nearest,tag=SpecialGoku] ~ ~ ~ ~ ~8
execute as @s at @s as @e[tag=SpecialGoku] if score @p player = @s player run scoreboard players add @s ultiGoku 1


execute as @s[scores={coup_special=1..200}] at @s run effect give @s levitation 1 0 true
execute as @s[scores={coup_special=1}] at @s run playsound ssl:goku.ult.chargement ambient @a
execute as @s[scores={coup_special=120}] at @s run stopsound @a * ssl:goku.ult.chargement

#execute as @s[scores={coup_special=1..40}] at @s run particle minecraft:cloud ~ ~10 ~ 0 0 0 0.15 1000 force
#execute as @s[scores={coup_special=41..80}] at @s run particle minecraft:cloud ~ ~10 ~ 0 0 0 0.25 1000 force
#execute as @s[scores={coup_special=81..120}] at @s run particle minecraft:cloud ~ ~10 ~ 0 0 0 0.35 1500 force

execute as @s[scores={coup_special=1..40}] at @s run particle minecraft:dust_color_transition 0 0.8 0.8 0.7 0.7 0.9 1 ~ ~10 ~ 0.5 0.5 0.5 1 1000 force
execute as @s[scores={coup_special=41..80}] at @s run particle minecraft:dust_color_transition 0 0.8 0.8 0.7 0.7 0.9 1 ~ ~10 ~ 1 1 1 1 1000 force
execute as @s[scores={coup_special=81..120}] at @s run particle minecraft:dust_color_transition 0 0.8 0.8 0.7 0.7 0.9 1 ~ ~10 ~ 2 2 2 1 1000 force

execute as @s[scores={coup_special=1}] as @a unless entity @s[scores={coup_special=1,goku=1}] run effect give @s poison 5 2 true
execute as @s[scores={coup_special=1}] as @a unless entity @s[scores={coup_special=1,goku=1}] run effect give @s slowness 8 2 true

effect give @s[scores={coup_special=1}] resistance 6 100 true

execute as @e[tag=SpecialGoku] at @s run playsound ssl:goku.ult ambient @a ~ ~ ~ 0.5 1
#execute as @e[tag=SpecialGoku] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 1000 force
execute as @e[tag=SpecialGoku] at @s run particle minecraft:dust_color_transition 0 0.8 0.8 0.7 0.7 0.9 1 ~ ~ ~ 2 2 2 1 1000 force
execute as @e[tag=SpecialGoku] at @s run tp @s ^ ^ ^0.8
effect give @e[tag=SpecialGoku] slow_falling 1 1 true

execute as @s[scores={coup_special=120..}] at @s as @e[tag=SpecialGoku] at @s if entity @a[distance=..7] run scoreboard players set @a[scores={coup_special=120..300,goku=1}] detect_kill 2
execute as @e[tag=SpecialGoku] at @s as @a[distance=..7] unless entity @s[scores={coup_special=120..160}] run effect give @s instant_damage 1 200 true


kill @e[scores={ultiGoku=250..},tag=SpecialGoku]


execute as @s[scores={coup_special=200}] run function kit:goku/give_goku



scoreboard players reset @s[scores={coup_special=300}] coup_special


scoreboard players add @s[scores={coup_special=1..}] coup_special 1


###########################     Compétence 1    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Super Saiyan"]}}},scores={competences=1..}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:carrot_on_a_stick{Tags:["Super Saiyan"]} 1

scoreboard players set @s[scores={competence1=1}] rechargement1 300

execute as @s[scores={competence1=1..100}] unless entity @s[scores={competence2=1..}] run item replace entity @s container.2 with minecraft:carrot_on_a_stick{CustomModelData:34,display:{Lore:['[{"text":"Kamehameha"}]'],Name:'[{"text":"Kamehameha"}]'},Tags:["Kamehameha"],Enchantments:[{}]} 1


execute as @s[scores={competence1=1}] at @s run playsound ssl:goku.saiyan.all ambient @a
execute as @s[scores={competence1=20}] at @s run playsound ssl:goku.saiyan.alone ambient @p
effect give @s[scores={competence1=1}] strength 5 2 true
effect give @s[scores={competence1=1}] speed 5 2 true
stopsound @s[scores={competence1=100}] * ssl:goku.saiyan.alone

execute as @s[scores={competence1=1..100,crouch=1..}] run effect give @s levitation 1 4 true
execute as @s[scores={competence1=1..100}] unless entity @s[scores={crouch=1..}] run effect clear @s levitation

execute as @s[scores={competence1=100}] unless entity @s[scores={competence2=1..}] run item replace entity @s container.2 with minecraft:carrot_on_a_stick{CustomModelData:34,display:{Lore:['[{"text":"Kamehameha"}]'],Name:'[{"text":"Kamehameha"}]'},Tags:["Kamehameha"]} 1


item replace entity @s[scores={competence1=1..,rechargement1=0}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:33,display:{Lore:['[{"text":"Super Saiyan"}]'],Name:'[{"text":"Super Saiyan"}]'},Tags:["Super Saiyan"]} 1

scoreboard players reset @s[scores={competence1=1}] competences
scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1

scoreboard players add @s[scores={competence1=1..}] competence1 1



###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Kamehameha"]}}},scores={competences=1..}] at @s run scoreboard players add @s competence2 1
clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["Kamehameha"]} 1

scoreboard players set @s[scores={competence2=1}] rechargement2 200

effect give @s[scores={competence2=1}] slow_falling 2 1 true
execute as @s[scores={competence2=1}] at @s run playsound ssl:goku.kamehameha ambient @a
execute as @s[scores={competence2=1..40}] at @s unless entity @s[scores={stun=40..}] run scoreboard players set @s stun 2

execute as @s[scores={competence2=1..40,crouch=1..}] run scoreboard players set @s competence2 40


execute as @s[scores={competence2=1..40}] unless entity @s[scores={competence1=1..100}] at @s positioned ^ ^ ^1 positioned ~ ~1 ~ if entity @s[distance=..0.01] at @s as @e[tag=Stun,distance=..2] if score @s player = @p player at @s run tp @s ~ ~0.3 ~
execute as @s[scores={competence2=1..40}] if entity @s[scores={competence1=1..100}] at @s positioned ^ ^ ^1 positioned ~ ~1 ~ if entity @s[distance=..0.01] at @s as @e[tag=Stun,distance=..2] if score @s player = @p player at @s run tp @s ~ ~0.6 ~

execute as @s[scores={competence2=1..40}] at @s at @e[tag=Stun,distance=..2] if score @e[tag=Stun,sort=nearest,limit=1] player = @s player run tp @s ~ ~ ~ ~ ~





execute as @s[scores={competence2=1}] at @s unless entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea","Projectile"],Duration:40}
execute as @s[scores={competence2=5}] at @s unless entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea","Projectile"],Duration:40}
execute as @s[scores={competence2=10}] at @s unless entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea","Projectile"],Duration:40}
execute as @s[scores={competence2=15}] at @s unless entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea","Projectile"],Duration:40}
execute as @s[scores={competence2=20}] at @s unless entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea","Projectile"],Duration:40}
execute as @s[scores={competence2=25}] at @s unless entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea","Projectile"],Duration:40}


execute as @s[scores={competence2=1}] at @s if entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea2","Projectile"],Duration:40}
execute as @s[scores={competence2=5}] at @s if entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea2","Projectile"],Duration:40}
execute as @s[scores={competence2=10}] at @s if entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea2","Projectile"],Duration:40}
execute as @s[scores={competence2=15}] at @s if entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea2","Projectile"],Duration:40}
execute as @s[scores={competence2=20}] at @s if entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea2","Projectile"],Duration:40}
execute as @s[scores={competence2=25}] at @s if entity @s[scores={competence1=1..100}] run summon area_effect_cloud ~ ~1 ~ {Tags:["LaserKamea2","Projectile"],Duration:40}




execute as @s[scores={competence2=1..40}] at @s positioned ~ ~1 ~ rotated as @s as @e[tag=LaserKamea,type=area_effect_cloud,distance=..1] unless entity @s[scores={player=0..}] run tp @s ~ ~ ~ ~ ~
execute as @s[scores={competence2=1..40}] at @s positioned ~ ~1 ~ rotated as @s as @e[tag=LaserKamea2,type=area_effect_cloud,distance=..1] unless entity @s[scores={player=0..}] run tp @s ~ ~ ~ ~ ~

execute as @s[scores={competence2=1..40}] at @s positioned ~ ~1 ~ as @e[tag=LaserKamea,type=area_effect_cloud,distance=..1] unless entity @s[scores={player=0..}] positioned ~ ~-1 ~ run scoreboard players operation @s player = @p[scores={goku=1}] player
execute as @s[scores={competence2=1..40}] at @s positioned ~ ~1 ~ as @e[tag=LaserKamea2,type=area_effect_cloud,distance=..1] unless entity @s[scores={player=0..}] positioned ~ ~-1 ~ run scoreboard players operation @s player = @p[scores={goku=1}] player



item replace entity @s[scores={competence2=1..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:34,display:{Lore:['[{"text":"Kamehameha"}]'],Name:'[{"text":"Kamehameha"}]'},Tags:["Kamehameha"]} 1

scoreboard players reset @s[scores={competence2=1}] competences
scoreboard players reset @s[scores={competence2=1..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1


###########################     Compétence 3    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Téléportation"]}}},scores={competences=1..}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competences=1..,competence3=1}] minecraft:carrot_on_a_stick{Tags:["Téléportation"]} 1


scoreboard players set @s[scores={competence3=1}] rechargement3 100


execute as @s[scores={competence3=1}] at @s at @a[limit=2,sort=nearest,distance=..30,scores={vie=1..}] unless score @p player = @s player run tp @s ~ ~ ~ ~ 0
execute as @s[scores={competence3=1}] at @s at @a[limit=2,sort=nearest,distance=..30,scores={vie=1..}] unless score @p player = @s player rotated as @s run tp @s ^ ^ ^-1
execute as @s[scores={competence3=1}] at @s at @a[limit=2,sort=nearest,distance=..30,scores={vie=1..}] unless score @p player = @s player at @s run playsound ssl:goku.teleport ambient @a




scoreboard players reset @s[scores={competence3=1}] competences
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:32,display:{Lore:['[{"text":"Téléportation"}]'],Name:'[{"text":"Téléportation"}]'},Tags:["Téléportation"]} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3

