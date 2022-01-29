#execute as @e[name="Mini", scores={noFollow=0}] at @e[name="MiniInv"] positioned ^ ^ ^-1 run tp @s ~ ~15 ~ ~ ~
execute as @e[name="MiniInv"] at @s positioned ^ ^ ^-1 run execute as @e[name="Mini", scores={noFollow=0}] if score @s player = @e[name="MiniInv",sort=nearest,limit=1] player run tp @s ~ ~15 ~ ~ 0
#execute as @e[name="MiniInv"] at @p[scores={crewmate=1}] run tp @s ~ ~-15 ~ ~ 0
execute as @a[scores={crewmate=1}] at @s run execute as @e[name="MiniInv"] if score @s player = @p player run tp @s ~ ~-15 ~ ~ 0

#execute at @p as @e[type=minecraft:armor_stand] if score @s player = @p player at @s as @a if score @s player = @e[type=minecraft:armor_stand,sort=nearest,limit=1] player run tp @s ~ ~ ~

###########################     Compétence 1    ####################################

    ###########################     Utilisé    ############################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Vent"]}}},scores={competences=1..,crewmate=1}] at @s unless block ~ ~-0.5 ~ minecraft:air run scoreboard players set @s useVent 1
clear @a[scores={competences=1..,useVent=1,crewmate=1}] minecraft:carrot_on_a_stick{Tags:["Vent"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Retour"]}}},scores={competences=1..,crewmate=1,useVent=2}] at @s run scoreboard players set @s useVent 3
clear @a[scores={competences=1..,useVent=3,crewmate=1}] minecraft:carrot_on_a_stick{Tags:["Retour"]} 1
execute as @a[scores={useVent=3,crewmate=1}] at @s run playsound ssl:crewmate.vent ambient @a[distance=..10] ~ ~ ~ 10000 1
#execute as @a[scores={useVent=3,crewmate=1}] at @e[name="vent"] run tp @a[scores={useVent=3,crewmate=1}] ~ ~2 ~
execute as @a[scores={useVent=3,crewmate=1}] at @e[name="vent"] if score @s player = @e[name="vent",sort=nearest,limit=1] player run tp ~ ~2 ~
execute as @a[scores={useVent=3,crewmate=1}] at @s run playsound ssl:crewmate.vent ambient @a[distance=..10] ~ ~ ~ 10000 1
#execute as @a[scores={useVent=3,crewmate=1}] at @e[name="vent"] run kill @e[type=falling_block,distance=..2]
execute as @a[scores={useVent=3,crewmate=1}] at @s run execute as @e[name="vent"] if score @s player = @p player at @s run kill @e[type=falling_block,distance=..2]
#execute as @a[scores={useVent=3,crewmate=1}] at @e[name="vent"] run kill @e[type=armor_stand,distance=..2,name="vent"]
execute as @a[scores={useVent=3,crewmate=1}] at @s run execute as @e[name="vent"] if score @s player = @p player at @s run kill @s

execute as @a[scores={useVent=1,crewmate=1,competences=1..}] at @s run summon armor_stand ~ ~-1.5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:iron_trapdoor"},NoGravity:1b,Time:-2147483648,DropItem:0b}],CustomName:'{"text":"vent"}'}
execute as @a[scores={useVent=1,crewmate=1,competences=1..}] at @s run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,name="vent"] player += @s player
item replace entity @a[scores={useVent=1,crewmate=1}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:4,display:{Lore:['[{"text":"Retour"}]'],Name:'[{"text":"Retour"}]'},Tags:["Retour"]} 1
execute as @a[scores={useVent=1,crewmate=1,competences=1..}] at @s run scoreboard players set @s useVent 2
scoreboard players reset @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Retour"]}}},scores={competences=1..,crewmate=1, useVent=2}] competences

execute as @a[scores={competences=1,crewmate=1, useVent=3}] at @s run scoreboard players add @s competence1 1
execute as @a[scores={competences=1,crewmate=1, useVent=3}] at @s run scoreboard players reset @s useVent
clear @a[scores={competences=1..,competence1=1,crewmate=1}] minecraft:carrot_on_a_stick{Tags:["Retour"]} 1

    ###########################     Rechargement    ############################

scoreboard players set @a[scores={competences=1..,competence1=1,crewmate=1}] rechargement1 300

    ###########################     Redonne l'item    ############################

item replace entity @a[scores={competence1=1..,rechargement1=0,crewmate=1}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Vent"}]'],Name:'[{"text":"Vent"}]'},Tags:["Vent"]} 1

    ###########################     Remet tout en ordre   ############################

scoreboard players reset @a[scores={competences=1..,competence1=1,crewmate=1}] competences
scoreboard players reset @a[scores={competence1=1..,rechargement1=0,crewmate=1}] competence1

scoreboard players add @a[scores={competence1=1..,crewmate=1}] competence1 1

###########################     Compétence 2    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Light"]}}},scores={competences=1,crewmate=1}] at @s run scoreboard players add @s competence2 1
clear @a[scores={competences=1..,competence2=1,crewmate=1}] minecraft:carrot_on_a_stick{Tags:["Light"]} 1

execute as @a[scores={competences=1..,competence2=1,crewmate=1}] at @s run effect give @a[distance=1..10] blindness 5 2 true
execute as @a[scores={competences=1..,competence2=1,crewmate=1}] at @s run effect give @p strength 5 0 true
execute as @a[scores={competences=1..,competence2=1,crewmate=1}] at @s run playsound ssl:crewmate.alarm ambient @a[distance=..10] ~ ~ ~ 10000 1

scoreboard players set @a[scores={competences=1..,competence2=1,crewmate=1}] rechargement2 300

item replace entity @a[scores={competence2=1..,rechargement2=0,crewmate=1}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Light"}]'],Name:'[{"text":"Light"}]'},Tags:["Light"]} 1

scoreboard players reset @a[scores={competences=1..,competence2=1,crewmate=1}] competences
scoreboard players reset @a[scores={competence2=1..,rechargement2=0,crewmate=1}] competence2

scoreboard players add @a[scores={competence2=1..,crewmate=1}] competence2 1

###########################     Compétence 3    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Crewmate Throw"]}}},scores={competences=1,crewmate=1}] at @s run scoreboard players add @s competence3 1
clear @a[scores={competences=1..,competence3=1..,crewmate=1}] minecraft:carrot_on_a_stick{Tags:["Crewmate Throw"]} 1

execute as @a[scores={competences=1..,competence3=1..,crewmate=1}] at @s run playsound ssl:crewmate.punch ambient @s ~ ~ ~ 0.5 1
execute as @a[scores={competences=1..,competence3=1..,crewmate=1}] at @s run scoreboard players set @e[name="Mini",limit=1,sort=nearest] noFollow 1
#execute as @a[scores={competence3=1,crewmate=1}] at @s run execute as @e[name="Mini", scores={noFollow=1}] at @s rotated as @p run function kit:crewmate/competence3
execute as @a[scores={competence3=1,crewmate=1}] at @s run execute as @e[name="Mini" , scores={noFollow=1}] if score @s player = @p player at @s rotated as @p run function kit:crewmate/competence3

#execute as @a[scores={competence3=1..,crewmate=1,rechargement3=..180}] at @s run execute as @e[name="Mini", scores={noFollow=1}] at @s unless block ~ ~-0.2 ~ minecraft:air unless block ~ ~-0.2 ~ minecraft:grass run summon creeper ~ ~2 ~ {ExplosionRadius:5b,Fuse:0,ignited:1b}
execute as @a[scores={competence3=1..,crewmate=1,rechargement3=..180}] at @s run execute as @e[name="Mini" , scores={noFollow=1}] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] run summon creeper ~ ~2 ~ {ExplosionRadius:5b,Fuse:0,ignited:1b}
execute as @a[scores={competence3=1..,crewmate=1,rechargement3=..180}] at @s run execute as @e[name="Mini" , scores={noFollow=1}] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] as @a[distance=..7] unless score @s player = @e[name="Mini" , scores={noFollow=1},limit=1,sort=nearest] player run scoreboard players operation @s detect_kill = @e[name="Mini" , scores={noFollow=1},limit=1,sort=nearest] player
#execute as @a[scores={competence3=1..,crewmate=1,rechargement3=..180}] at @s run execute as @e[name="Mini", scores={noFollow=1}] at @s unless block ~ ~-0.2 ~ minecraft:air unless block ~ ~-0.2 ~ minecraft:grass run tp 1000 1000 1000
execute as @a[scores={competence3=1..,crewmate=1,rechargement3=..180}] at @s run execute as @e[name="Mini" , scores={noFollow=1}] if score @s player = @p player at @s if entity @s[nbt={OnGround:1b}] run tp 1000 1000 1000

scoreboard players set @a[scores={competences=1..,competence3=1,crewmate=1}] rechargement3 200

item replace entity @a[scores={competence3=1..,rechargement3=0,crewmate=1}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:3,display:{Lore:['[{"text":"Crewmate Throw"}]'],Name:'[{"text":"Crewmate Throw"}]'},Tags:["Crewmate Throw"]} 1

scoreboard players add @a[scores={competence3=1..,crewmate=1}] competence3 1

#execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run execute as @e[name="Mini"] at @s run kill @s
execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run execute as @e[name="Mini"] if score @s player = @p player at @s run kill @s
#execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run execute as @e[name="MiniInv"] at @s run kill @s
execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run execute as @e[name="MiniInv"] if score @s player = @p player at @s run kill @s
execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["Projectile"],Invisible:1,Invulnerable:1b,ShowArms:1b,Small:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;942205473,-710590074,-2069887809,-1182691287],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdjMTRlYjg3ZGM2NDQ0YWU2MjVmMTIyY2YzYWU5NmZjOGEyODZhYmI2OWRjYzc4ZWU5NWNkNDQzMjMyYTA1YyJ9fX0="}]}}}}],CustomName:'{"text":"Mini"}'}
execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,name="Mini"] player += @s player
execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,CustomName:'{"text":"MiniInv"}'}
execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,name="MiniInv"] player += @s player
execute as @a[scores={competence3=1..,rechargement3=0,crewmate=1}] at @s run scoreboard players set @e[name="Mini",limit=1,sort=nearest] noFollow 0

scoreboard players reset @a[scores={competences=1..,competence3=1..,crewmate=1}] competences
scoreboard players reset @a[scores={competence3=1..,rechargement3=0,crewmate=1}] competence3
scoreboard players reset @a[scores={rechargement3=0,crewmate=1}] rechargement3


###########################     Coup spécial    ####################################

execute as @a[scores={coup_special=1..,crewmate=1}] at @s run scoreboard players set @a ultime 0

clear @a[scores={coup_special=1,crewmate=1}] minecraft:warped_fungus_on_a_stick

execute as @a[scores={crewmate=1, coup_special=1}] at @s run scoreboard players add @s tickButton 1

execute as @a[scores={crewmate=1, coup_special=1, tickButton=1}] at @s run title @a title {"text":"Dead body reported","color":"#FF0000"}
execute as @a[scores={crewmate=1, coup_special=1, tickButton=1}] at @s run playsound ssl:crewmate.bouton ambient @a ~ ~ ~ 10000 1
execute as @a[scores={crewmate=1, coup_special=1, tickButton=40}] at @s run playsound ssl:crewmate.meeting ambient @a ~ ~ ~ 10000 1
execute as @a[scores={crewmate=1, coup_special=1}] at @s run effect give @a resistance 1 100 true
execute as @a[scores={crewmate=1, coup_special=1..4}] at @s run effect give @a[distance=1..] slowness 1 100 true
#execute as @a[scores={crewmate=1, coup_special=1}] at @a run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @s ~ 1000 ~
execute as @a[scores={crewmate=1, coup_special=1}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={crewmate=1, coup_special=1}] ~ ~-9 ~
execute as @a[scores={crewmate=1, coup_special=1}] at @s run scoreboard players set @a randomButton 0
execute as @a[scores={crewmate=1, coup_special=1}] at @s run scoreboard players set @s randomButton 1000
execute as @a[scores={crewmate=1, coup_special=1}] at @s run execute as @a at @s run function kit:clear_player
#execute as @a[scores={crewmate=1, coup_special=1}] at @s run execute as @a at @s run scoreboard players set @s root 2000

execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 1
execute as @a[scores={randomButton=1}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=1}] ~2 ~-10 ~2
execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 2
execute as @a[scores={randomButton=2}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=2}] ~-2 ~-10 ~-2
execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 3
execute as @a[scores={randomButton=3}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=3}] ~-2 ~-10 ~2
execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 4
execute as @a[scores={randomButton=4}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=4}] ~2 ~-10 ~-2
execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 5
execute as @a[scores={randomButton=5}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=5}] ~ ~-10 ~2
execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 6
execute as @a[scores={randomButton=6}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=6}] ~ ~-10 ~2
execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 7
execute as @a[scores={randomButton=7}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=7}] ~2 ~-10 ~
execute as @a[scores={crewmate=1, coup_special=1..}] at @s run execute as @r[scores={randomButton=..0}] at @s run scoreboard players set @s randomButton 8
execute as @a[scores={randomButton=8}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={randomButton=8}] ~-2 ~-10 ~

##execute as @a[scores={randomButton=1..10}] at @s run setblock ~ ~2 ~ barrier
##execute as @a[scores={randomButton=1..10}] at @s run setblock ~1 ~1 ~ barrier
##execute as @a[scores={randomButton=1..10}] at @s run setblock ~ ~1 ~1 barrier
##execute as @a[scores={randomButton=1..10}] at @s run setblock ~-1 ~1 ~ barrier
##execute as @a[scores={randomButton=1..10}] at @s run setblock ~ ~1 ~-1 barrier

#1000 111 1000  999 111 1000  1000 111 1001  1001 111 1000  1000 111 999

##execute as @a[scores={crewmate=1, coup_special=1, tickButton=60..}] at @s run scoreboard players reset @a randomButton
execute as @a[scores={crewmate=1, coup_special=1, tickButton=60..}] at @s run scoreboard players set @s dropHead 0
execute as @a[scores={crewmate=1, coup_special=1, tickButton=60..}] at @s run scoreboard players set @s coup_special 2
item replace entity @a[scores={crewmate=1, coup_special=2, dropHead=0}] container.4 with minecraft:player_head{display:{Name:"{\"text\":\"Astronaut (red)\"}"},SkullOwner:{Id:[I;942205473,-710590074,-2069887809,-1182691287],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdjMTRlYjg3ZGM2NDQ0YWU2MjVmMTIyY2YzYWU5NmZjOGEyODZhYmI2OWRjYzc4ZWU5NWNkNDQzMjMyYTA1YyJ9fX0="}]}}} 1

execute as @a[scores={randomButton=1000}] at @s run scoreboard players set @s hitHead 0

execute as @a[scores={hitHead=1,randomButton=..10}] at @s run scoreboard players add @a randomButton 10
execute as @a[scores={hitHead=1,randomButton=..100}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={hitHead=1,randomButton=..100}] ~ ~-40 ~
execute as @a[scores={hitHead=1,randomButton=..100}] at @s run playsound ssl:crewmate.eject ambient @a ~ ~ ~ 10000 1
execute as @a[scores={hitHead=1,randomButton=..100}] at @s run title @a subtitle {"text":"a été éjecté !","color":"red"}
execute as @a[scores={hitHead=1,randomButton=..100}] at @s run title @a title {"selector":"@a[scores={hitHead=1}]","color":"red"}
execute as @a[scores={hitHead=1,randomButton=..100}] at @s run fill ~-10 ~-1 ~-10 ~10 ~10 ~10 air replace barrier
execute as @a[scores={hitHead=1,randomButton=..100}] at @s run scoreboard players set @a[distance=1..] hitHead 0
execute as @a[scores={hitHead=1..,randomButton=..100}] at @s run clear @s player_head
execute as @a[scores={hitHead=1..,randomButton=..100}] at @s run scoreboard players set @a[scores={crewmate=1, coup_special=2}] coup_special 3
execute as @a[scores={hitHead=1..,randomButton=..100}] at @s run clear @a[scores={crewmate=1, coup_special=3}] player_head
execute as @a[scores={hitHead=1..,randomButton=..100}] at @s run execute as @e[name="middle",sort=nearest,limit=1] at @s run tp @a[scores={hitHead=0}] ~ ~-30 ~ 0 90
execute as @a[scores={hitHead=1..,randomButton=..100}] at @s run tp @a[scores={hitHead=1..}] ~ ~-0.5 ~ ~10 ~ 
execute as @a[scores={hitHead=1..,randomButton=..100}] at @s run effect give @a[scores={hitHead=1..}] instant_damage 1 0
##execute as @a[scores={hitHead=1..,dropHead=0}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,CustomName:'{"text":"bombermanfly"}',FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680],FadeColors:[I;16777215]}]}}}}
execute as @a[scores={hitHead=1..,randomButton=..100}] at @s run scoreboard players add @s hitHead 1

execute as @a[scores={hitHead=59,randomButton=..100}] at @s run effect give @a resistance 1 255 true
execute as @a[scores={hitHead=60,randomButton=..100}] at @s run scoreboard players set @a[scores={crewmate=1, coup_special=3}] coup_special 4
execute as @a[scores={hitHead=60,randomButton=..100}] at @s run scoreboard players reset @s hitHead

execute as @a[scores={coup_special=4..,crewmate=1}] at @s run scoreboard players reset @a tickButton
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run scoreboard players reset @a randomButton
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run scoreboard players reset @a dropHead

execute as @a[scores={coup_special=4..,crewmate=1}] at @s run spreadplayers ~ ~ 25 200 false @a

execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={crewmate=1}] at @s run function kit:crewmate/give_crewmate
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={goku=1}] at @s run function kit:goku/give_goku
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={emergency=1}] at @s run function kit:emergency/give_emergency
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={bomberman=1}] at @s run function kit:bomberman/give_bomberman
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={yasuo=1}] at @s run function kit:yasuo/give_yasuo
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={Doomfist=1}] at @s run function kit:doomfist/give_doomfist
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={link=1}] at @s run function kit:link/give_link
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={mario=1}] at @s run function kit:mario/give_mario
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={pokemon=1}] at @s run function kit:pokemon/give_pokemon
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={assassin=1}] at @s run function kit:assassin/give_assassin
execute as @a[scores={coup_special=4..,crewmate=1}] at @s run execute as @a[scores={pourcenUltime=100}] at @s run function kit:giveult

execute as @a[scores={coup_special=4..,crewmate=1}] at @s run scoreboard players reset @s coup_special