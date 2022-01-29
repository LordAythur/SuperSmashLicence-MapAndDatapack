execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute as @s at @s run execute store result score @s RANDOM run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
execute as @s at @s run scoreboard players operation @s RANDOM %= max RANDOM
execute as @s at @s run kill @e[type=area_effect_cloud,tag=random]
