execute as @s[scores={ModeBoule=1}] at @s positioned ~ ~1 ~ run particle minecraft:dust 0.831 0.000 1.000 1 ^ ^ ^0.5 0 0 0 0 1 force
execute as @s[scores={ModeBoule=1}] at @s positioned ~ ~1 ~ run particle minecraft:dust 0.831 0.000 1.000 1 ^ ^ ^-0.5 0 0 0 0 1 force

execute as @s[scores={ModeBoule=2}] at @s positioned ~ ~1 ~ run particle minecraft:dust 1.000 0.333 0.000 1 ^ ^ ^0.5 0 0 0 0 1 force
execute as @s[scores={ModeBoule=2}] at @s positioned ~ ~1 ~ run particle minecraft:dust 1.000 0.333 0.000 1 ^ ^ ^-0.5 0 0 0 0 1 force

execute as @s at @s run tp @s ~ ~ ~ ~30 ~

execute as @s at @s unless block ~ ~-0.1 ~ air run scoreboard players operation @s motion_y2 *= @s -1
execute as @s at @s unless block ~ ~1.1 ~ air run scoreboard players operation @s motion_y2 *= @s -1

execute as @s at @s unless block ~-0.32 ~0.5 ~ air run scoreboard players operation @s motion_x2 *= @s -1
execute as @s at @s unless block ~0.32 ~0.5 ~ air run scoreboard players operation @s motion_x2 *= @s -1

execute as @s at @s unless block ~ ~0.5 ~0.32 air run scoreboard players operation @s motion_z2 *= @s -1
execute as @s at @s unless block ~ ~0.5 ~-0.32 air run scoreboard players operation @s motion_z2 *= @s -1


execute store result entity @s[scores={ModeBoule=1}] Motion[0] double 0.01 run scoreboard players get @s motion_x2
execute store result entity @s[scores={ModeBoule=1}] Motion[1] double 0.01 run scoreboard players get @s motion_y2
execute store result entity @s[scores={ModeBoule=1}] Motion[2] double 0.01 run scoreboard players get @s motion_z2

execute store result entity @s[scores={ModeBoule=2}] Motion[0] double 0.005 run scoreboard players get @s motion_x2
execute store result entity @s[scores={ModeBoule=2}] Motion[1] double 0.005 run scoreboard players get @s motion_y2
execute store result entity @s[scores={ModeBoule=2}] Motion[2] double 0.005 run scoreboard players get @s motion_z2

#tp @s ~ ~0.03 ~


