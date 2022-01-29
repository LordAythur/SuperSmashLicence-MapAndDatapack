scoreboard players add @e[scores={tornade=1..}] tornade 1



execute as @e[scores={tornade=1..}] at @s store result entity @s Motion[0] double 0.005 run scoreboard players get @s motion_x2
execute as @e[scores={tornade=1..}] at @s store result entity @s Motion[2] double 0.005 run scoreboard players get @s motion_z2


execute as @e[scores={tornade=1..}] at @s run tp @s ~ ~ ~ ~40 ~

execute as @e[scores={tornade=1..}] at @s run particle minecraft:cloud ^ ^ ^0.3
execute as @e[scores={tornade=1..}] at @s positioned ~ ~0.5 ~ run particle minecraft:cloud ^ ^ ^-0.5
execute as @e[scores={tornade=1..}] at @s positioned ~ ~1 ~ run particle minecraft:cloud ^ ^ ^0.7
execute as @e[scores={tornade=1..}] at @s positioned ~ ~1.5 ~ run particle minecraft:cloud ^ ^ ^-0.85
execute as @e[scores={tornade=1..}] at @s positioned ~ ~2 ~ run particle minecraft:cloud ^ ^ ^1

execute as @e[scores={tornade=1..}] at @s as @e[distance=..2,type=!armor_stand] unless score @e[tag=Tornade,limit=1,sort=nearest] player = @s player unless entity @s[scores={flyYasuo=1..}] run scoreboard players operation @s detect_kill = @e[tag=Tornade,limit=1,sort=nearest] player
execute as @e[scores={tornade=1..}] at @s as @e[distance=..2,type=!armor_stand] unless score @e[tag=Tornade,limit=1,sort=nearest] player = @s player unless entity @s[scores={flyYasuo=1..}] run effect give @s instant_damage 1 1 true
execute as @e[scores={tornade=1..}] at @s as @e[distance=..2,type=!armor_stand] unless score @e[tag=Tornade,limit=1,sort=nearest] player = @s player unless entity @s[scores={flyYasuo=1..}] run scoreboard players add @s flyYasuo 1



execute as @e[scores={tornade=1..}] at @s run tp @s ~ ~0.01 ~


execute as @e[scores={tornade=1..}] at @s unless block ~ ~ ~-1 air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~
execute as @e[scores={tornade=1..}] at @s unless block ~ ~ ~1 air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~
execute as @e[scores={tornade=1..}] at @s unless block ~1 ~ ~-1 air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~
execute as @e[scores={tornade=1..}] at @s unless block ~1 ~ ~1 air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~
execute as @e[scores={tornade=1..}] at @s unless block ~-1 ~ ~-1 air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~
execute as @e[scores={tornade=1..}] at @s unless block ~-1 ~ ~1 air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~
execute as @e[scores={tornade=1..}] at @s unless block ~1 ~ ~ air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~
execute as @e[scores={tornade=1..}] at @s unless block ~-1 ~ ~ air if block ~ ~2.1 ~ air run tp @s ~ ~0.05 ~


kill @e[scores={tornade=60..}]


effect give @a[scores={flyYasuo=1}] levitation 1 20 true
scoreboard players add @a[scores={flyYasuo=1..}] flyYasuo 1

effect clear @a[scores={flyYasuo=10..}] levitation
scoreboard players reset @a[scores={flyYasuo=10..}] flyYasuo
