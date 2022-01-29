function kit:doomfist/loop_doomfist
function kit:crewmate/loop_crewmate
function kit:bomberman/loop_bomberman
function kit:pokemon/loop_pokemon

execute as @a[scores={goku=1}] run function kit:goku/loop_goku
function kit:goku/kamea

execute as @a[scores={wright=1}] run function kit:wright/loop_wright


execute as @a[scores={emergency=1}] run function kit:emergency/loop_emergency
execute as @a[scores={stunEmergency=1..}] run function kit:emergency/stun_emergency


execute as @a[scores={yasuo=1}] run function kit:yasuo/loop_yasuo
execute as @e[tag=WindWall] run function kit:yasuo/wind_wall
execute as @e[tag=Wind_Up] run function kit:yasuo/wind_up
execute as @e[tag=AnimUltimYasuo] run function kit:yasuo/anim_ultime
function kit:yasuo/tornade


execute as @a[scores={link=1}] run function kit:link/loop_link
function kit:link/loop_arrow
execute as @a[scores={StunCinetis=0..}] at @s run function kit:link/ulti
execute as @e[type=armor_stand,tag=Coeur] run function kit:link/coeur

execute as @a[scores={mario=1}] run function kit:mario/loop_mario

execute as @a[scores={assassin=1}] run function kit:assassin/loop_assassin
execute as @e[tag=BalleAssassin] at @s run function kit:assassin/balles


execute as @a[scores={damage=1..}] run function kit:detect_kill

execute as @e[type=player,scores={death=2..}] run function kit:death_alive
#execute as @a[scores={death=1}] run function kit:death_dead
execute as @e[scores={mode=0}] at @s run execute as @a[scores={death=1}] run function kit:death_dead
execute as @e[scores={mode=1}] at @s run execute as @a[scores={death=1}] run function kit:death_dead_multi

execute as @a[scores={kill=1..}] run function kit:kill

execute as @a[scores={findepartie=1}] run function kit:map/end

function kit:rechargement1
function kit:rechargement2
function kit:rechargement3

function kit:selectkit

function kit:stun

function kit:music

function kit:changement_map
function kit:multiplayer


scoreboard players reset @a damage
scoreboard players reset @a takeDamage
scoreboard players reset @a competences
scoreboard players reset @a crouch

execute as @e[name="middle",type=armor_stand] at @s as @e[distance=120..140] run kill @s

effect give @a jump_boost 25555 1 true
effect give @a saturation 3 1 true

execute as @e[name="kit",type=armor_stand,limit=1] at @s run execute as @p at @s run scoreboard players add @e[name="kit",type=armor_stand,limit=1] aleatoire 1
execute as @e[name="kit",type=armor_stand,limit=1] at @s run execute as @p at @s run scoreboard players set @e[name="kit",type=armor_stand,limit=1,scores={aleatoire=10..}] aleatoire 0

function kit:ultime

kill @e[type=armor_stand,scores={player=0}]
kill @e[type=area_effect_cloud,scores={player=0}]


#ult crewmate redonner ult
#ult yas spawn pas les tp