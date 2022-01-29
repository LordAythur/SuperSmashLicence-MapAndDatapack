###########################     Coup spécial    ####################################

clear @s[scores={coup_special=1}] minecraft:warped_fungus_on_a_stick


scoreboard players set @s[scores={coup_special=1}] coup_special 1000
execute as @s[scores={coup_special=1000}] at @s at @a[distance=..15] unless score @s player = @p player if block ~ ~-1 ~ air run scoreboard players set @s coup_special 1

execute as @s[scores={coup_special=1}] at @s at @a[distance=..15,limit=2,sort=nearest] if block ~ ~-1 ~ air unless score @s player = @p player facing entity @p feet run tp @s ^ ^ ^-2 ~ ~


execute as @s[scores={coup_special=1}] at @s run playsound ssl:yasuo.ult_debut ambient @a



execute as @s[scores={coup_special=1}] at @s as @a[distance=..15] unless score @s player = @p player at @s if block ~ ~-0.5 ~ air run scoreboard players set @s stun 0
execute as @s[scores={coup_special=1}] at @s as @a[distance=..15] unless score @s player = @p player at @s if block ~ ~-0.5 ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["UltimYasuo"],Duration:1000}
execute as @s[scores={coup_special=1}] at @s as @e[tag=UltimYasuo,distance=..15] unless entity @s[scores={player=0..}] at @s run scoreboard players operation @s player += @p player

execute as @s[scores={coup_special=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["TpUltimYasuo"],Duration:1000}
execute as @s[scores={coup_special=1}] at @s as @e[tag=TpUltimYasuo,limit=1,sort=nearest] unless entity @s[scores={player=0..}] at @s run scoreboard players operation @s player += @p player


execute as @s[scores={coup_special=1..50}] as @e[tag=TpUltimYasuo] at @s if score @s player = @p player at @s run tp @s ~ ~0.5 ~
execute as @s[scores={coup_special=1..50}] as @e[tag=UltimYasuo] at @s if score @s player = @p player at @s run tp @s ~ ~0.5 ~


execute as @s[scores={coup_special=1}] at @s as @e[tag=TpUltimYasuo] if score @s player = @p player run tp @s ~ ~ ~ ~ ~
execute as @s[scores={coup_special=1..}] at @s as @e[tag=TpUltimYasuo] if entity @s[scores={player=0..}] at @s as @a if score @s player = @e[tag=TpUltimYasuo,limit=1,sort=nearest] player run tp @s ~ ~ ~ ~ ~

execute as @s[scores={coup_special=1}] at @s as @e[tag=UltimYasuo,distance=..15] if entity @s[scores={player=0..}] at @s as @a if score @s player = @e[tag=UltimYasuo,limit=1,sort=nearest] player at @s run tp @e[tag=UltimYasuo,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @s[scores={coup_special=1..}] at @s as @e[tag=UltimYasuo,distance=..15] if entity @s[scores={player=0..}] at @s as @a if score @s player = @e[tag=UltimYasuo,limit=1,sort=nearest] player run tp @s ~ ~ ~ ~ ~


execute as @s[scores={coup_special=1..}] as @e[tag=UltimYasuo] at @s run particle poof ~ ~ ~ 0 0 0 0.05 10


execute as @s[scores={coup_special=1}] at @s run summon area_effect_cloud ~1 ~ ~0.5 {Tags:["AnimUltimYasuo"],Duration:1000,Rotation:[0.0f,-40.0f]}
execute as @s[scores={coup_special=1}] at @s run summon area_effect_cloud ~0.1 ~ ~1 {Tags:["AnimUltimYasuo"],Duration:1000,Rotation:[90.0f,-40.0f]}
execute as @s[scores={coup_special=1}] at @s run summon area_effect_cloud ~-1 ~ ~-0.1 {Tags:["AnimUltimYasuo"],Duration:1000,Rotation:[180.0f,-40.0f]}
execute as @s[scores={coup_special=1}] at @s run summon area_effect_cloud ~1 ~ ~-0.2 {Tags:["AnimUltimYasuo"],Duration:1000,Rotation:[270.0f,-40.0f]}


execute as @s[scores={coup_special=..80}] at @s run effect give @a[distance=..10] slow_falling 1 1 true


execute as @s[scores={coup_special=60}] at @s run playsound ssl:yasuo.fin_ult ambient @a


effect give @s[scores={coup_special=80}] resistance 1 255 true
execute as @s[scores={coup_special=80}] at @s run summon creeper ~ ~1.5 ~ {Fuse:1,ignited:1b,ExplosionRadius:5b,Invulnerable:1b}
execute as @s[scores={coup_special=80}] at @s run summon creeper ~ ~1.5 ~ {Fuse:1,ignited:1b,ExplosionRadius:5b,Invulnerable:1b}
execute as @s[scores={coup_special=80}] at @s run summon creeper ~ ~1.5 ~ {Fuse:1,ignited:1b,ExplosionRadius:5b,Invulnerable:1b}
execute as @s[scores={coup_special=80}] at @s run summon creeper ~ ~1.5 ~ {Fuse:1,ignited:1b,ExplosionRadius:5b,Invulnerable:1b}
execute as @s[scores={coup_special=80}] at @s run summon creeper ~ ~1.5 ~ {Fuse:1,ignited:1b,ExplosionRadius:5b,Invulnerable:1b}
execute as @s[scores={coup_special=80}] at @s run summon creeper ~ ~1.5 ~ {Fuse:1,ignited:1b,ExplosionRadius:5b,Invulnerable:1b}

execute as @s[scores={coup_special=80}] at @s as @a[distance=..10] unless score @p player = @s player run scoreboard players operation @s detect_kill = @p player


execute as @s[scores={coup_special=80..90}] at @s run kill @e[tag=UltimYasuo,distance=..15]
execute as @s[scores={coup_special=80..90}] at @s run kill @e[tag=TpUltimYasuo,distance=..15]

scoreboard players reset @s[scores={coup_special=80..90}] coup_special
scoreboard players reset @s[scores={coup_special=1001}] coup_special


scoreboard players add @s[scores={coup_special=1..}] coup_special 1


#bug si meurt alors on prend l'ulti

###########################     Compétence 1    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Tornade"]}}},scores={competences=1}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:carrot_on_a_stick{Tags:["Tornade"]} 1

scoreboard players set @s[scores={competence1=1}] rechargement1 100



execute as @s[scores={competence1=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["Tornade","Projectile"],Invisible:1b}
execute at @s[scores={competence1=1}] run scoreboard players operation @e[tag=Tornade,limit=1,sort=nearest] player += @p player
execute as @a[scores={competence1=1}] at @s run scoreboard players add @e[sort=nearest,tag=Tornade,limit=1] tornade 1

execute as @s[scores={competence1=1}] at @s run playsound ssl:yasuo.tornade ambient @a

execute as @e[scores={tornade=1}] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @e[scores={tornade=1}] at @s rotated as @p run function kit:yasuo/initialisation_tornade

#voir loop  pour la fonction tornade


item replace entity @s[scores={competence1=1..,rechargement1=0}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:38,display:{Lore:['[{"text":"Tornade"}]'],Name:'[{"text":"Tornade"}]'},Tags:["Tornade"]} 1

scoreboard players reset @s[scores={competence1=1}] competences
scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1

scoreboard players add @s[scores={competence1=1..}] competence1 1


###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Mur de vent"]}}},scores={competences=1}] at @s run scoreboard players add @s competence2 1
clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["Mur de vent"]} 1

scoreboard players set @s[scores={competence2=1}] rechargement2 300


execute as @a[scores={competence2=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["WindWall"],Duration:100000}
execute as @a[scores={competence2=1}] at @s run tp @e[tag=WindWall,limit=1,sort=nearest] ~ ~ ~ ~ 0
execute as @a[scores={competence2=1}] at @s as @e[tag=WindWall,limit=1,sort=nearest] at @s run tp @s ^ ^ ^1
execute at @s[scores={competence2=1}] run scoreboard players operation @e[tag=WindWall,limit=1,sort=nearest] player += @p player
execute at @s[scores={competence2=1}] run scoreboard players set @e[tag=WindWall,limit=1,sort=nearest] -1 -1

execute as @s[scores={competence2=1}] at @s run playsound ssl:yasuo.wind_wall ambient @a

#Voir loop pour la fonction



item replace entity @s[scores={competence2=1..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:39,display:{Lore:['[{"text":"Mur de vent"}]'],Name:'[{"text":"Mur de vent"}]'},Tags:["Mur de vent"]} 1

scoreboard players reset @s[scores={competence2=1}] competences
scoreboard players reset @s[scores={competence2=1..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1

###########################     Compétence 3    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Bump"]}}},scores={competences=1}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competences=1..,competence3=1}] minecraft:carrot_on_a_stick{Tags:["Bump"]} 1


scoreboard players set @s[scores={competence3=1}] rechargement3 250




execute as @a[scores={competence3=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Wind_Up"],Duration:100000}
execute at @s[scores={competence3=1}] run scoreboard players operation @e[tag=Wind_Up,limit=1,sort=nearest] player += @p player
execute at @s[scores={competence3=1}] run tp @e[tag=Wind_Up,limit=1,sort=nearest] ~ ~1 ~

effect give @s[scores={competence3=1}] slow_falling 1 10 true

execute as @s[scores={competence3=1}] at @s run playsound ssl:yasuo.dash_up ambient @a



scoreboard players reset @s[scores={competence3=1}] competences
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:40,display:{Lore:['[{"text":"Bump"}]'],Name:'[{"text":"Bump"}]'},Tags:["Bump"]} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3

