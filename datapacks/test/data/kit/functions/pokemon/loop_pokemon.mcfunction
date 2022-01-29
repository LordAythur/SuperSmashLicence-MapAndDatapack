execute as @a[scores={pokemon=1}] at @s run particle dust 1 1 1 1 ~ ~0.2 ~ 0.3 0.2 0.3 1 20

execute as @a[scores={pokemon=1}] at @s run kill @e[type=snowball]

execute as @a[scores={pokemon=1,demeteros=1}] at @s run effect give @s resistance 1 0 true
execute as @a[scores={pokemon=1,fulguris=1}] at @s run effect give @s strength 1 0 true
execute as @a[scores={pokemon=1,boreas=1}] at @s run effect give @s speed 1 0 true

#execute as @a[scores={pokemon=1,demeteros=1,rechargement2=0,competence2=0}] at @s run item replace entity @s container.3 with minecraft:carrot_on_a_stick{CustomModelData:16,display:{Lore:['[{"text":"Attack"}]'],Name:'[{"text":"Attack"}]'},Tags:["Attack"]} 1
#execute as @a[scores={pokemon=1,boreas=1,rechargement2=0,competence2=0}] at @s run item replace entity @s container.3 with minecraft:carrot_on_a_stick{CustomModelData:15,display:{Lore:['[{"text":"Attack"}]'],Name:'[{"text":"Attack"}]'},Tags:["Attack"]} 1
#execute as @a[scores={pokemon=1,fulguris=1,rechargement2=0,competence2=0}] at @s run item replace entity @s container.3 with minecraft:carrot_on_a_stick{CustomModelData:17,display:{Lore:['[{"text":"Attack"}]'],Name:'[{"text":"Attack"}]'},Tags:["Attack"]} 1

execute as @a[scores={pokemon=1,crouch=1..}] at @s run effect clear @s slow_falling
execute as @a[scores={pokemon=1,crouch=1..}] at @s run scoreboard players set @s crouch 0


###########################     Compétence 1    ####################################

scoreboard players add @a[scores={pokemon=1}] rechargeFly 1
execute as @a[scores={pokemon=1,rechargeFly=75..,chargeFly=..4}] at @s run scoreboard players add @s chargeFly 1
execute as @a[scores={pokemon=1,rechargeFly=75..}] at @s run scoreboard players set @s rechargeFly 0

execute as @a[scores={snowball=1,pokemon=1}] at @s run scoreboard players set @s competence1 1
execute as @a[scores={snowball=1,pokemon=1}] at @s run scoreboard players set @s snowball 0

execute as @a[scores={competence1=1,pokemon=1}] at @s run effect give @s levitation 1 20 true
execute as @a[scores={competence1=1,pokemon=1}] at @s run playsound ssl:pokemon.fly ambient @s ~ ~ ~ 0.5 1
execute as @a[scores={competence1=1,pokemon=1}] at @s run scoreboard players remove @s chargeFly 1
execute as @a[scores={competence1=6,pokemon=1}] at @s run effect clear @s levitation
execute as @a[scores={competence1=7,pokemon=1}] at @s run scoreboard players set @s competence1 0

execute as @a[scores={pokemon=1,chargeFly=1..}] at @s run item replace entity @s hotbar.1 with snowball{CustomModelData:36,display:{Lore:['[{"text":"Impulsion"}]'],Name:'[{"text":"Impulsion"}]'}}
execute as @a[scores={pokemon=1,chargeFly=0}] at @s run item replace entity @s hotbar.1 with air

execute as @a[scores={pokemon=1,demeteros=1}] at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"chargeFly"},"bold":true,"color":"dark_red"},{"text":"/5 - Démétéros","bold":true,"color":"gold"}]
execute as @a[scores={pokemon=1,boreas=1}] at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"chargeFly"},"bold":true,"color":"dark_red"},{"text":"/5 - Boréas","bold":true,"color":"gold"}]
execute as @a[scores={pokemon=1,fulguris=1}] at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"chargeFly"},"bold":true,"color":"dark_red"},{"text":"/5 - Fulguris","bold":true,"color":"gold"}]

scoreboard players add @a[scores={competence1=1..,pokemon=1}] competence1 1

###########################     Compétence 2    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Switch"]}}},scores={competences=1..,pokemon=1}] at @s run scoreboard players set @s competence2 1
clear @a[scores={competences=1..,competence2=1,pokemon=1}] minecraft:carrot_on_a_stick{Tags:["Switch"]} 1

scoreboard players set @a[scores={competence2=1,pokemon=1}] competences 0

execute as @a[scores={pokemon=1, competence2=2}] at @s run scoreboard players add @s switch 1
execute as @a[scores={pokemon=1, competence2=2, switch=3}] at @s run scoreboard players set @s switch 0
execute as @a[scores={pokemon=1, competence2=2}] at @s run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.3 1 0.3 1 1000 force
execute as @a[scores={pokemon=1, competence2=2}] at @s run effect clear @s strength
execute as @a[scores={pokemon=1, competence2=2}] at @s run effect clear @s speed
execute as @a[scores={pokemon=1, competence2=2}] at @s run effect clear @s resistance

execute as @a[scores={pokemon=1, competence2=2, switch=0}] at @s run scoreboard players set @s demeteros 1
execute as @a[scores={pokemon=1, competence2=2, switch=0}] at @s run playsound ssl:pokemon.demeteros ambient @a[distance=..10] ~ ~ ~ 0.5 1
execute as @a[scores={pokemon=1, competence2=2, switch=0}] at @s run tellraw @s ["",{"text":"Vous vous transformez en","color":"gold"},{"text":" Démétéros","bold":true,"color":"dark_red"}]
execute as @a[scores={pokemon=1, competence2=2, switch=0}] at @s run scoreboard players set @s boreas 0
execute as @a[scores={pokemon=1, competence2=2, switch=0}] at @s run scoreboard players set @s fulguris 0

execute as @a[scores={pokemon=1, competence2=2, switch=1}] at @s run scoreboard players set @s demeteros 0
execute as @a[scores={pokemon=1, competence2=2, switch=1}] at @s run playsound ssl:pokemon.fulguris ambient @a[distance=..10] ~ ~ ~ 0.5 1
execute as @a[scores={pokemon=1, competence2=2, switch=1}] at @s run tellraw @s ["",{"text":"Vous vous transformez en","color":"gold"},{"text":" Fulguris","bold":true,"color":"yellow"}]
execute as @a[scores={pokemon=1, competence2=2, switch=1}] at @s run scoreboard players set @s boreas 0
execute as @a[scores={pokemon=1, competence2=2, switch=1}] at @s run scoreboard players set @s fulguris 1

execute as @a[scores={pokemon=1, competence2=2, switch=2}] at @s run scoreboard players set @s demeteros 0
execute as @a[scores={pokemon=1, competence2=2, switch=2}] at @s run playsound ssl:pokemon.boreas ambient @a[distance=..10] ~ ~ ~ 0.5 1
execute as @a[scores={pokemon=1, competence2=2, switch=2}] at @s run tellraw @s ["",{"text":"Vous vous transformez en","color":"gold"},{"text":" Boréas","bold":true,"color":"dark_aqua"}]
execute as @a[scores={pokemon=1, competence2=2, switch=2}] at @s run scoreboard players set @s boreas 1
execute as @a[scores={pokemon=1, competence2=2, switch=2}] at @s run scoreboard players set @s fulguris 0

execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire

execute as @a[scores={pokemon=1, competence2=2, boreas=1}] at @s run execute as @a[distance=..10] at @s run effect give @s levitation 1 10 true
execute as @a[scores={pokemon=1, competence2=2, boreas=1}] at @s run effect give @s slow_falling 5 1 true
execute as @a[scores={pokemon=1, competence2=2, boreas=1}] at @s run execute as @a[distance=..10] at @s run playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 1 0.1
execute as @a[scores={pokemon=1, competence2=2, boreas=1}] at @s run execute as @a[distance=..10] at @s run particle minecraft:cloud ~ ~-1 ~ 1 0 1 0.01 100
execute as @a[scores={pokemon=1, competence2=11, boreas=1}] at @s run execute as @a[distance=..10] at @s run effect clear @s levitation

#scoreboard players set @a[scores={competence2=11,pokemon=1, boreas=1}] rechargement2 200

execute as @a[scores={pokemon=1, competence2=2, fulguris=1}] at @s run effect give @s resistance 1 200 true
execute as @a[scores={pokemon=1, competence2=2, fulguris=1}] at @s run execute as @r[distance=1..15] at @s run summon lightning_bolt ~ ~ ~ 
execute as @a[scores={pokemon=1, competence2=2, fulguris=1}] at @s run execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire
execute as @a[scores={pokemon=1, competence2=5, fulguris=1}] at @s run execute as @r[distance=1..15] at @s run summon lightning_bolt ~ ~ ~ 
execute as @a[scores={pokemon=1, competence2=5, fulguris=1}] at @s run execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire
execute as @a[scores={pokemon=1, competence2=8, fulguris=1}] at @s run execute as @r[distance=1..15] at @s run summon lightning_bolt ~ ~ ~ 
execute as @a[scores={pokemon=1, competence2=8, fulguris=1}] at @s run execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire
execute as @a[scores={pokemon=1, competence2=21, fulguris=1}] at @s run effect clear @s resistance

#scoreboard players set @a[scores={competence2=21,pokemon=1, fulguris=1}] rechargement2 150

execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=1..15] at @s unless block ~ ~-1 ~ air run effect give @s instant_damage 1 1 true
execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=1..15] at @s unless block ~ ~-1 ~ air run effect give @s slowness 3 0 true

execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run particle campfire_signal_smoke ~ ~ ~ 2.5 1 2.5 0.01 5000 force

execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=..10] at @s run playsound minecraft:block.gravel.break ambient JrsArthur ~ ~ ~ 1 0.1
execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=..10] at @s run playsound minecraft:block.gravel.break ambient JrsArthur ~ ~ ~ 1 0.2
execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=..10] at @s run playsound minecraft:block.gravel.break ambient JrsArthur ~ ~ ~ 1 0.3
execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=..10] at @s run playsound minecraft:block.gravel.break ambient JrsArthur ~ ~ ~ 1 0.01
execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=..10] at @s run playsound minecraft:block.gravel.break ambient JrsArthur ~ ~ ~ 1 0.02
execute as @a[scores={pokemon=1, competence2=2, demeteros=1}] at @s run execute as @a[distance=..10] at @s run playsound minecraft:block.gravel.break ambient JrsArthur ~ ~ ~ 1 0.03

#scoreboard players set @a[scores={competence2=2,pokemon=1, demeteros=1}] rechargement2 150

scoreboard players set @a[scores={competence2=2,pokemon=1}] rechargement2 150

item replace entity @a[scores={competence2=3..,pokemon=1,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:35,display:{Lore:['[{"text":"Switch"}]'],Name:'[{"text":"Switch"}]'},Tags:["Switch"]} 1

execute as @a[scores={pokemon=1, competence2=3..,rechargement2=0}] at @s run scoreboard players set @s competence2 0

scoreboard players add @a[scores={competence2=1..,pokemon=1}] competence2 1




###########################     Compétence 3    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Pokeball"]}}},scores={competences=1..,pokemon=1}] at @s run scoreboard players set @s competence3 1
clear @a[scores={competences=1..,competence3=1,pokemon=1}] minecraft:carrot_on_a_stick{Tags:["Attack"]} 1

execute as @a[scores={competence3=1,pokemon=1}] at @s run summon armor_stand ~ ~ ~ {Tags:["Projectile"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,Small:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;79594529,-936227592,-2098881656,-669748866],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQzZDRiN2FjMjRhMWQ2NTBkZGY3M2JkMTQwZjQ5ZmMxMmQyNzM2ZmMxNGE4ZGMyNWMwZjNmMjlkODVmOGYifX19"}]}}}}],HandItems:[{},{}],CustomName:'{"text":"pokeball"}'}
execute as @a[scores={competence3=1,pokemon=1}] at @s run playsound ssl:pokemon.ballthrow ambient @s ~ ~ ~ 0.5 1
execute as @a[scores={competence3=1,pokemon=1}] at @s run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,name="pokeball"] player += @s player
execute as @a[scores={competence3=1,pokemon=1}] at @s run scoreboard players set @e[type=minecraft:armor_stand,limit=1,sort=nearest,name="pokeball"] competence3 1
execute as @a[scores={competence3=1,pokemon=1}] at @s run execute as @e[name="pokeball"] if score @s player = @p player at @s rotated as @p run function kit:pokemon/competence3


execute as @e[name="pokeball",scores={competence3=9}] at @s run execute as @a[distance=..15] at @s run playsound ssl:pokemon.wait ambient @s ~ ~ ~ 0.5 1
execute as @e[name="pokeball",scores={competence3=10}] at @s run execute as @p[distance=..1.5] at @s run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["pokeball"]}
execute as @e[name="pokeball",scores={competence3=3..}] at @s run execute as @p[distance=..1.5] at @s run gamemode spectator @s 
execute as @e[name="pokeball",scores={competence3=3..}] at @s run execute as @p[distance=..1.5] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1]

execute as @e[name="pokeball",scores={competence3=12..,player=1}] at @s run execute as @p[scores={player=1}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=1}]
execute as @e[name="pokeball",scores={competence3=12..,player=2}] at @s run execute as @p[scores={player=2}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=2}]
execute as @e[name="pokeball",scores={competence3=12..,player=3}] at @s run execute as @p[scores={player=3}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=3}]
execute as @e[name="pokeball",scores={competence3=12..,player=4}] at @s run execute as @p[scores={player=4}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=4}]
execute as @e[name="pokeball",scores={competence3=12..,player=5}] at @s run execute as @p[scores={player=5}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=5}]
execute as @e[name="pokeball",scores={competence3=12..,player=6}] at @s run execute as @p[scores={player=6}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=6}]
execute as @e[name="pokeball",scores={competence3=12..,player=7}] at @s run execute as @p[scores={player=7}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=7}]
execute as @e[name="pokeball",scores={competence3=12..,player=8}] at @s run execute as @p[scores={player=8}] at @s run tp @s @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={player=8}]

execute as @e[name="pokeball",scores={competence3=10}] at @s run execute as @p[distance=..2] at @s run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,name="pokeball"] player += @s player
execute as @e[name="pokeball",scores={competence3=10}] at @s run scoreboard players set @s pokeball 0
execute as @e[name="pokeball",scores={competence3=10}] at @s run execute as @p[distance=..2] at @s run scoreboard players set @e[name="pokeball",scores={competence3=10},sort=nearest,limit=1] competence3 12


#execute as @e[name="pokeball",scores={competence3=12}] at @s run execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s motion_x2 *= @s 0
#execute as @e[name="pokeball",scores={competence3=12}] at @s run execute store result entity @s Motion[1] double 0.005 run scoreboard players operation @s motion_y2 *= @s 0
#execute as @e[name="pokeball",scores={competence3=12}] at @s run execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s motion_z2 *= @s 0
execute as @e[name="pokeball",scores={competence3=10..}] at @s run tp @s @e[type=area_effect_cloud,sort=nearest,tag=pokeball,limit=1,distance=..5]

#execute as @e[name="pokeball",scores={competence3=12}] at @s run scoreboard players set @s motion_x2 0
#execute as @e[name="pokeball",scores={competence3=12}] at @s run scoreboard players set @s motion_y1 0
#execute as @e[name="pokeball",scores={competence3=12}] at @s run scoreboard players set @s motion_y2 0
#execute as @e[name="pokeball",scores={competence3=12}] at @s run scoreboard players set @s motion_z1 0
#execute as @e[name="pokeball",scores={competence3=12}] at @s run scoreboard players set @s motion_z2 0

data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=20}] {Pose:{Head:[0f,0f,10f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=22}] {Pose:{Head:[0f,0f,20f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=24}] {Pose:{Head:[0f,0f,30f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=26}] {Pose:{Head:[0f,0f,20f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=28}] {Pose:{Head:[0f,0f,10f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=30}] {Pose:{Head:[0f,0f,00f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=32}] {Pose:{Head:[0f,0f,-10f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=34}] {Pose:{Head:[0f,0f,-20f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=36}] {Pose:{Head:[0f,0f,-30f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=38}] {Pose:{Head:[0f,0f,-20f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=40}] {Pose:{Head:[0f,0f,-10f]}}
data merge entity @e[type=armor_stand,sort=nearest,name="pokeball",limit=1,scores={competence3=42}] {Pose:{Head:[0f,0f,0f]}}

execute as @e[type=armor_stand,name="pokeball",limit=1,scores={competence3=60,pokeball=..1}] at @s run scoreboard players set max RANDOM 2
execute as @e[type=armor_stand,name="pokeball",limit=1,scores={competence3=60,pokeball=2..}] at @s run scoreboard players set max RANDOM 1
execute as @e[type=armor_stand,name="pokeball",limit=1,scores={competence3=60}] at @s run function kit:random

execute as @e[name="pokeball",scores={competence3=60,RANDOM=1}] at @s run scoreboard players add @s pokeball 1
execute as @e[name="pokeball",scores={competence3=60,RANDOM=1}] at @s run say tick
execute as @e[name="pokeball",scores={competence3=60,RANDOM=1}] at @s run stopsound @a ambient ssl:pokemon.wait
execute as @e[name="pokeball",scores={competence3=60,RANDOM=1}] at @s run execute as @a[distance=..15] at @s run playsound ssl:pokemon.wait ambient @s ~ ~ ~ 0.5 1
execute as @e[name="pokeball",scores={competence3=60,RANDOM=1}] at @s run scoreboard players set @s competence3 12

execute as @e[name="pokeball",scores={competence3=60,RANDOM=0}] at @s run say gotcha!
execute as @e[name="pokeball",scores={competence3=60,RANDOM=0}] at @s run particle minecraft:dust_color_transition 1 1 0 1 1 1 1 ~ ~1.2 ~ 0.2 0.2 0.2 1 10
execute as @e[name="pokeball",scores={competence3=60,RANDOM=0}] at @s run gamemode adventure @p
execute as @e[name="pokeball",scores={competence3=60,RANDOM=0}] at @s run stopsound @a ambient ssl:pokemon.wait
execute as @e[name="pokeball",scores={competence3=60,RANDOM=0}] at @s run execute as @a[distance=..15] at @s run playsound ssl:pokemon.ballout ambient @s ~ ~ ~ 0.5 1
execute as @e[name="pokeball",scores={competence3=60,pokeball=0,RANDOM=0}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b,Invulnerable:1b}
execute as @e[name="pokeball",scores={competence3=60,pokeball=1,RANDOM=0}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,ignited:1b,Invulnerable:1b}
execute as @e[name="pokeball",scores={competence3=60,pokeball=2..,RANDOM=0}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0,ignited:1b,Invulnerable:1b}
execute as @e[name="pokeball",scores={competence3=60,RANDOM=0}] at @s run kill @s

execute as @a[scores={competence3=100..,pokemon=1}] at @s run execute as @e[name="pokeball",scores={competence3=10}] at @s run stopsound @a ambient ssl:pokemon.wait
execute as @a[scores={competence3=100..,pokemon=1}] at @s run execute as @e[name="pokeball",scores={competence3=10}] at @s run execute as @a[distance=..15] at @s run playsound ssl:pokemon.balloutfail ambient @s ~ ~ ~ 0.5 1
execute as @a[scores={competence3=100..,pokemon=1,player=1}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=1}] at @s run kill @s
execute as @a[scores={competence3=100..,pokemon=1,player=2}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=2}] at @s run kill @s
execute as @a[scores={competence3=100..,pokemon=1,player=3}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=3}] at @s run kill @s
execute as @a[scores={competence3=100..,pokemon=1,player=4}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=4}] at @s run kill @s
execute as @a[scores={competence3=100..,pokemon=1,player=5}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=5}] at @s run kill @s
execute as @a[scores={competence3=100..,pokemon=1,player=6}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=6}] at @s run kill @s
execute as @a[scores={competence3=100..,pokemon=1,player=7}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=7}] at @s run kill @s
execute as @a[scores={competence3=100..,pokemon=1,player=8}] at @s run execute as @e[name="pokeball",scores={competence3=10,player=8}] at @s run kill @s



scoreboard players set @a[scores={competence3=1,pokemon=1}] rechargement3 200

execute as @a[scores={pokemon=1, competences=1..}] at @s run scoreboard players set @s competences 0

item replace entity @a[scores={competence3=20..,pokemon=1,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:37,display:{Lore:['[{"text":"Pokeball"}]'],Name:'[{"text":"Pokeball"}]'},Tags:["Pokeball"]} 1

execute as @a[scores={pokemon=1, competence3=100..,rechargement3=0}] at @s run scoreboard players set @s competence3 0

scoreboard players add @a[scores={competence3=1..,pokemon=1}] competence3 1

scoreboard players add @e[name="pokeball",scores={competence3=..9}] competence3 1
scoreboard players add @e[name="pokeball",scores={competence3=12..}] competence3 1

###########################     Coup spécial    ####################################

clear @a[scores={coup_special=1..}] minecraft:warped_fungus_on_a_stick
execute as @a[scores={coup_special=1,pokemon=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,CustomName:'{"text":"ultime_poke"}'}
execute as @a[scores={coup_special=1,pokemon=1}] run scoreboard players operation @e[name="ultime_poke",limit=1,sort=nearest] player += @p player
execute as @a[scores={coup_special=1,pokemon=1}] at @s run weather thunder
#execute as @a[scores={coup_special=1..,pokemon=1}] at @s run tp 1000 140 1000
execute as @a[scores={coup_special=1..,pokemon=1}] at @s run effect give @s resistance 1 255 true

execute as @a[scores={pokemon=1,ultimePoke=30}] at @s run execute as @e[name="ultime_poke"] at @s if score @s player = @e[name="ultime_poke",limit=1,sort=nearest] player run kill @s
execute as @a[scores={pokemon=1,ultimePoke=30}] at @s run weather clear
scoreboard players set @a[scores={pokemon=1,ultimePoke=30}] coup_special 0
scoreboard players set @a[scores={pokemon=1,ultimePoke=30}] ultimePoke 0

scoreboard players add @a[scores={coup_special=1..,pokemon=1}] coup_special 1
scoreboard players add @a[scores={coup_special=11..,pokemon=1}] ultimePoke 1
scoreboard players set @a[scores={coup_special=11..,pokemon=1}] coup_special 2

execute as @a[scores={coup_special=1..,pokemon=1}] at @s run particle minecraft:mycelium ~ ~ ~ 5 5 5 1 500 force

execute as @a[scores={coup_special=10,pokemon=1}] at @s run execute as @a[gamemode=adventure,distance=1..10] at @s unless block ~ ~-1 ~ air run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b}

execute as @a[scores={coup_special=10,pokemon=1}] at @s run execute as @e[name="ultime_poke"] at @s if score @s player = @e[name="ultime_poke",limit=1,sort=nearest] player run spreadplayers 1000 1000 25 200 false @s
execute as @a[scores={coup_special=10,pokemon=1}] at @s run execute as @e[name="ultime_poke"] at @s if score @s player = @e[name="ultime_poke",limit=1,sort=nearest] player run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @a[scores={coup_special=10,pokemon=1}] at @s run execute as @e[name="ultime_poke"] at @s if score @s player = @e[name="ultime_poke",limit=1,sort=nearest] player run summon lightning_bolt

execute as @a[scores={pokemon=1,coup_special=11}] at @s run execute as @a[distance=1..300] at @s if block ~ ~-1 ~ air run tp ~ ~-1 ~

