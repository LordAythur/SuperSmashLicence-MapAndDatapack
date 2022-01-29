#execute as @a[scores={emergency=1,ModeBoule=1}] at @s run title @s actionbar [{"text":"Mode : ","bold":true,"color":"gold"}, {"text":"Téléportation","bold":true,"color":"dark_red"}]
#execute as @a[scores={emergency=1,ModeBoule=2}] at @s run title @s actionbar [{"text":"Mode : ","bold":true,"color":"gold"}, {"text":"Déplacement","bold":true,"color":"dark_red"}]


###########################     Coup spécial    ####################################

clear @s[scores={coup_special=1}] minecraft:warped_fungus_on_a_stick

execute as @s[scores={coup_special=1}] at @s run playsound ssl:emergency.trou_noir ambient @a ~ ~ ~ 0.7 0.95

execute as @s[scores={coup_special=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Trou_Noir"],Duration:1000}
execute as @s[scores={coup_special=1}] at @s run scoreboard players operation @e[tag=Trou_Noir,limit=1,sort=nearest] player += @p player

execute as @s[scores={coup_special=1}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run tp @s ~ ~1 ~

#degat
execute as @s[scores={coup_special=1..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s as @e[distance=..1.5] unless score @e[tag=Trou_Noir,limit=1,sort=nearest] player = @s player run effect give @s instant_damage 1 0 true
execute as @s[scores={coup_special=1..280}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s as @a[distance=..3,scores={death=1..}] as @a if score @e[tag=Trou_Noir,limit=1,sort=nearest] player = @s player run scoreboard players set @s coup_special 280
#Si le trou noir tue qql, alors ca l'arrette


#Etape 1
execute as @s[scores={coup_special=1..50}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.01 10 force @a

execute as @s[scores={coup_special=1..50}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..5,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.1


execute as @s[scores={coup_special=1..50}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @a[distance=..5] unless score @p player = @s player run scoreboard players operation @p detect_kill = @s player


#Etape 2
execute as @s[scores={coup_special=51..100}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run particle smoke ~ ~ ~ 0.3 0.3 0.3 0.05 50 force @a

execute as @s[scores={coup_special=51..100}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..5,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.15
execute as @s[scores={coup_special=51..100}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..10,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.1

execute as @s[scores={coup_special=51..100}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @a[distance=..10] unless score @p player = @s player run scoreboard players operation @p detect_kill = @s player

#Etape 3
execute as @s[scores={coup_special=100..150}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.05 100 force @a

execute as @s[scores={coup_special=100..150}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..5,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.2
execute as @s[scores={coup_special=100..150}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..10,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.15
execute as @s[scores={coup_special=100..150}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..15,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.1

execute as @s[scores={coup_special=100..150}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @a[distance=..15] unless score @p player = @s player run scoreboard players operation @p detect_kill = @s player


#Etape 4
execute as @s[scores={coup_special=150..200}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run particle smoke ~ ~ ~ 0.7 0.7 0.7 0.05 150 force @a

execute as @s[scores={coup_special=150..200}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..5,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.25
execute as @s[scores={coup_special=150..200}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..10,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.2
execute as @s[scores={coup_special=150..200}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..15,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.15
execute as @s[scores={coup_special=150..200}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..25,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.1

execute as @s[scores={coup_special=150..200}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @a[distance=..25] unless score @p player = @s player run scoreboard players operation @p detect_kill = @s player


#Etape 5
execute as @s[scores={coup_special=200..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run particle smoke ~ ~ ~ 1 1 1 0.05 200 force @a

execute as @s[scores={coup_special=200..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..5,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.3
execute as @s[scores={coup_special=200..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..10,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.25
execute as @s[scores={coup_special=200..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..15,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.2
execute as @s[scores={coup_special=200..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..25,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.15
execute as @s[scores={coup_special=200..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..40,type=!armor_stand,type=!area_effect_cloud] unless score @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] player = @s player facing entity @e[tag=Trou_Noir,limit=1,sort=nearest] eyes run tp @e[limit=1,sort=nearest,type=!armor_stand,type=!area_effect_cloud] ^ ^ ^0.1

execute as @s[scores={coup_special=200..300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @a[distance=..40] unless score @p player = @s player run scoreboard players operation @p detect_kill = @s player


#fin
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s as @a[distance=..10] run stopsound @s * ssl:emergency.trou_noir


execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s as @e[type=!armor_stand,type=!area_effect_cloud,distance=..3] at @s run tp @s ^ ^ ^-1


execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..3] run summon falling_block ~1 ~ ~ {BlockState:{Name:"minecraft:crying_obsidian"},Time:100}
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..3] run summon falling_block ~ ~ ~1 {BlockState:{Name:"minecraft:crying_obsidian"},Time:100}
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..3] run summon falling_block ~-1 ~ ~ {BlockState:{Name:"minecraft:crying_obsidian"},Time:100}
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s at @e[distance=..3] run summon falling_block ~ ~ ~-1 {BlockState:{Name:"minecraft:crying_obsidian"},Time:100}

execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:1b,Invulnerable:1b}
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:1b,Invulnerable:1b}
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:1b,Invulnerable:1b}
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:1b,Invulnerable:1b}
execute as @s[scores={coup_special=300}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:1b,Invulnerable:1b}

execute as @s[scores={coup_special=320}] at @s run kill @e[type=falling_block,nbt={BlockState:{Name:"minecraft:crying_obsidian"}}]
execute as @s[scores={coup_special=320}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run fill ~-20 ~ ~-20 ~20 ~15 ~20 air replace crying_obsidian
execute as @s[scores={coup_special=320}] at @s as @e[tag=Trou_Noir] if score @p player = @s player at @s run fill ~-20 ~ ~-20 ~20 ~-15 ~20 air replace crying_obsidian


execute as @s[scores={coup_special=320}] at @s as @e[tag=Trou_Noir] if score @p player = @s player run kill @s

scoreboard players reset @s[scores={coup_special=320}] coup_special


scoreboard players add @s[scores={coup_special=1..}] coup_special 1


###########################     Compétence 1    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["BouleTP"]}}},scores={competences=1}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:carrot_on_a_stick{Tags:["BouleTP"]} 1
item replace entity @s[scores={competence1=1}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:31,display:{Lore:['[{"text":"ReactiverTP"}]'],Name:'[{"text":"ReactiverTP"}]'},Tags:["ReactiverTP"]} 1

scoreboard players reset @s[scores={competence1=1}] competences

#Reactivation
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["ReactiverTP"]}}},scores={competences=1}] at @s run scoreboard players set @s competence1 60
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["ReactiverTP"]}}},scores={competence1=60}] run scoreboard players reset @s competences
clear @s[scores={competence1=60}] minecraft:carrot_on_a_stick{Tags:["ReactiverTP"]} 1


scoreboard players set @s[scores={competence1=60}] rechargement1 200

execute as @s[scores={competence1=1}] at @s run playsound ssl:emergency.tire ambient @a

execute as @s[scores={competence1=1}] at @s run summon armor_stand ~ ~1 ~ {Tags:["Boule","Projectile"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1299596657,-2014624875,-1267160830,2012116301],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQ1ZjM5MzE4ODkwYThhYmZlZTViMzIwYjM1Yjk1OWZjNjZlMTI1ZThmOGNmM2I3MDY2ZDI0ZjY1ZGU0YjkifX19"}]}}}}],Small:1b}
execute at @s[scores={competence1=1}] positioned ~ ~1 ~ as @e[tag=Boule,distance=..0.1] unless entity @s[scores={player=0..}] run scoreboard players operation @s player += @p player
execute at @s[scores={competence1=1}] positioned ~ ~1 ~ as @e[tag=Boule,distance=..0.1] unless entity @s[scores={ModeBoule=0..}] run scoreboard players set @s ModeBoule 1
execute at @s[scores={competence1=1}] as @e[tag=Boule,scores={ModeBoule=1}] if score @s player = @p player run scoreboard players add @s TimeBoule 1





execute as @s[scores={competence1=60}] at @s as @e[scores={TimeBoule=1..,ModeBoule=1}] if score @s player = @p player run scoreboard players set @s TimeBoule 60


execute as @e[scores={TimeBoule=60,ModeBoule=1}] at @s as @a if score @s player = @e[scores={TimeBoule=60},limit=1,sort=nearest] player run effect give @s slow_falling 1 1 true
execute as @e[scores={TimeBoule=60,ModeBoule=1}] at @s as @a if score @s player = @e[scores={TimeBoule=60},limit=1,sort=nearest] player run tp @s ~ ~ ~
execute as @e[scores={TimeBoule=60,ModeBoule=1}] at @s as @a if score @s player = @e[scores={TimeBoule=60},limit=1,sort=nearest] player run playsound ssl:emergency.tp ambient @a





item replace entity @s[scores={competence1=60..,rechargement1=0}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:28,display:{Lore:['[{"text":"BouleTP"}]'],Name:'[{"text":"BouleTP"}]'},Tags:["BouleTP"]} 1


scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1
scoreboard players reset @s[scores={rechargement1=0}] rechargement1

scoreboard players add @s[scores={competence1=1..}] competence1 1


###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["BouleMove"]}}},scores={competences=1}] at @s run scoreboard players add @s competence2 1
clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["BouleMove"]} 1
item replace entity @s[scores={competence2=1}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:30,display:{Lore:['[{"text":"ReactiverMove"}]'],Name:'[{"text":"ReactiverMove"}]'},Tags:["ReactiverMove"]} 1

scoreboard players reset @s[scores={competence2=1}] competences

#Reactivation
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["ReactiverMove"]}}},scores={competences=1}] at @s run scoreboard players set @s competence2 60
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["ReactiverMove"]}}},scores={competence2=60}] run scoreboard players reset @s competences
clear @s[scores={competence2=60..}] minecraft:carrot_on_a_stick{Tags:["ReactiverMove"]} 1






scoreboard players set @s[scores={competence2=60}] rechargement2 100






execute as @s[scores={competence2=1}] at @s run playsound ssl:emergency.tire ambient @a

execute as @s[scores={competence2=1}] at @s run summon armor_stand ~ ~1 ~ {Tags:["Boule","Projectile"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-329061771,1076643067,-1888370960,22693428],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTA4Yjc3MmVjYWVlNzA2MjM1ZDFhZGJmMGI5YTI5YjU4YmE5YzBlZDYwZGU2ZjEwZWZiMWE3Zjg2ZDllIn19fQ=="}]}}}}],Small:1b}
execute at @s[scores={competence2=1}] positioned ~ ~1 ~ as @e[tag=Boule,distance=..0.1] unless entity @s[scores={player=0..}] run scoreboard players operation @s player += @p player
execute at @s[scores={competence2=1}] positioned ~ ~1 ~ as @e[tag=Boule,distance=..0.1] unless entity @s[scores={ModeBoule=0..}] run scoreboard players set @s ModeBoule 2
execute at @s[scores={competence2=1}] as @e[tag=Boule,scores={ModeBoule=2}] if score @s player = @p player run scoreboard players add @s TimeBoule 1




execute as @s[scores={competence2=60}] at @s as @e[scores={TimeBoule=1..,ModeBoule=2}] if score @s player = @p player run scoreboard players set @s TimeBoule 60


execute at @e[scores={TimeBoule=1..60,ModeBoule=2}] as @e[distance=..2,type=!armor_stand,type=!area_effect_cloud] unless score @s player = @e[scores={ModeBoule=2},limit=1,sort=nearest] player run tp @s ~ ~ ~
execute at @e[scores={TimeBoule=1..60,ModeBoule=2}] as @e[distance=..2,type=!armor_stand,type=!area_effect_cloud] unless score @s player = @e[scores={ModeBoule=2},limit=1,sort=nearest] player run scoreboard players set @s stunEmergency 80
execute at @e[scores={TimeBoule=1..60,ModeBoule=2}] as @e[distance=..2,type=!armor_stand,type=!area_effect_cloud] unless score @s player = @e[scores={ModeBoule=2},limit=1,sort=nearest] player run effect give @s slow_falling 1 1 true
execute at @e[scores={TimeBoule=1..60,ModeBoule=2}] as @a[distance=..2] unless score @s player = @e[scores={ModeBoule=2},limit=1,sort=nearest] player run scoreboard players operation @s detect_kill = @e[scores={ModeBoule=2},limit=1,sort=nearest] player


#execute as @s at @s as @e[scores={TimeBoule=1..60,ModeBoule=2}] if score @s player = @p player at @s as @e[type=!armor_stand,type=!area_effect_cloud] if score @s suitBoule = @e[scores={ModeBoule=2},limit=1,sort=nearest] player run tp @s ~ ~ ~
#execute as @s at @s as @e[scores={TimeBoule=1..60,ModeBoule=2}] if score @s player = @p player at @s as @e[type=!armor_stand,type=!area_effect_cloud] if score @s suitBoule = @e[scores={ModeBoule=2},limit=1,sort=nearest] player run effect give @s slow_falling 1 1 true





item replace entity @s[scores={competence2=60..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:27,display:{Lore:['[{"text":"BouleMove"}]'],Name:'[{"text":"BouleMove"}]'},Tags:["BouleMove"]} 1





scoreboard players reset @s[scores={competence2=2}] competences
scoreboard players reset @s[scores={competence2=60..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1

###########################     Compétence 3    ####################################



execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Le cube"]}}},scores={competences=1}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competences=1..,competence3=1}] minecraft:carrot_on_a_stick{Tags:["Le cube"]} 1


scoreboard players set @s[scores={competence3=1}] rechargement3 300


execute as @s[scores={competence3=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["CommandB"],Invisible:1b}
execute at @s[scores={competence3=1}] at @s run scoreboard players operation @e[tag=CommandB,limit=1,sort=nearest] player += @p player
execute as @s[scores={competence3=1}] at @s run summon armor_stand ~ ~-1.5 ~ {Tags:["CommandBInv"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:command_block"},Time:-2147483648,DropItem:0b}]}
execute at @s[scores={competence3=1}] at @s positioned ~ ~-1.5 ~ run scoreboard players operation @e[tag=CommandBInv,limit=1,sort=nearest] player += @p player


#tp
execute as @s at @s as @e[tag=CommandB] if score @s player = @p player at @s as @e[tag=CommandBInv] if score @s player = @e[tag=CommandB,sort=nearest,limit=1] player run tp @s ~ ~-1.5 ~

execute as @s at @s as @e[tag=CommandB] if score @s player = @p player at @s run scoreboard players add @s commandBlock 1


execute as @s at @s as @e[scores={commandBlock=..100}] if score @s player = @p player if entity @s[nbt={OnGround:1b}] run scoreboard players set @s commandBlock 100
execute as @s at @s as @e[scores={commandBlock=..100}] if score @s player = @p player if entity @s[nbt={OnGround:1b}] at @s run playsound ssl:emergency.cube ambient @a ~ ~ ~ 1 2


execute as @s at @s as @e[tag=CommandB] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] as @a unless score @s player = @e[limit=1,sort=nearest,tag=CommandB] player run particle minecraft:smoke ~ ~ ~ 2.5 0 2.5 0 100 force @s
execute as @s at @s as @e[tag=CommandB] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] as @a if score @s player = @e[limit=1,sort=nearest,tag=CommandB] player run particle minecraft:heart ~ ~ ~ 2.5 0 2.5 0 5 force @s

execute as @s at @s as @e[tag=CommandB] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] as @a[distance=..5] unless score @s player = @e[limit=1,sort=nearest,tag=CommandB] player run effect give @s wither 1 1 true
execute as @s at @s as @e[tag=CommandB] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] as @a[distance=..5] if score @s player = @e[limit=1,sort=nearest,tag=CommandB] player run effect give @s strength 1 0 true
execute as @s at @s as @e[tag=CommandB] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] as @a[distance=..5] unless score @s player = @e[limit=1,sort=nearest,tag=CommandB] player run scoreboard players operation @s detect_kill = @e[limit=1,sort=nearest,tag=CommandB] player



execute as @e[scores={commandBlock=0..200}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace command_block



execute as @e[scores={commandBlock=200..}] at @s as @e[tag=CommandBInv] if score @s player = @e[limit=1,sort=nearest,tag=CommandB] player at @s run kill @e[type=falling_block,distance=..2]
execute as @e[scores={commandBlock=200..}] at @s as @e[tag=CommandBInv] if score @s player = @e[limit=1,sort=nearest,tag=CommandB] player run kill @s 
kill @e[scores={commandBlock=200..}]

scoreboard players reset @s[scores={competence3=1}] competences
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:29,display:{Lore:['[{"text":"Le cube"}]'],Name:'[{"text":"Le cube"}]'},Tags:["Le cube"]} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3


######################################    Passif       #############################################



execute as @s[scores={damage=1..}] at @s as @a[distance=..5,limit=1,sort=nearest,scores={takeDamage=0..,stunEmergency=1..}] at @s run playsound ssl:emergency.tp ambient @a ~ ~ ~ 1 2
execute as @s[scores={damage=1..}] at @s as @a[distance=..5,limit=1,sort=nearest,scores={takeDamage=0..,stunEmergency=1..}] unless entity @s[scores={stun=20..}] run scoreboard players set @s stun 20
execute as @s[scores={damage=1..}] at @s as @a[distance=..5,limit=1,sort=nearest,scores={takeDamage=0..,stunEmergency=1..}] run scoreboard players reset @s stunEmergency







kill @e[scores={TimeBoule=61..}]

execute as @e[scores={TimeBoule=1}] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @e[scores={TimeBoule=1}] at @s rotated as @p run function kit:emergency/initialisation_boule



execute as @s at @s as @e[scores={TimeBoule=1..60}] if score @s player = @p player at @s rotated as @p run function kit:emergency/competence1


execute as @s at @s as @e[scores={TimeBoule=1..}] if score @s player = @p player run scoreboard players add @s TimeBoule 1
execute as @s[scores={competence2=60}] at @s as @e[scores={TimeBoule=1..}] if score @s player = @p player run scoreboard players set @s TimeBoule 60