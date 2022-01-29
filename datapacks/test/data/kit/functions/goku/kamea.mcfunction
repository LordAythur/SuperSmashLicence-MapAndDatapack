execute as @e[tag=LaserKamea] at @s run particle minecraft:dust_color_transition 0 0.8 0.8 0.7 0.7 0.9 1 ~ ~ ~ 0.3 0.3 0.3 1 50 force
execute as @e[tag=LaserKamea] at @s positioned ^ ^ ^1 run particle minecraft:dust_color_transition 0 0.8 0.8 0.7 0.7 0.9 1 ~ ~ ~ 0.3 0.3 0.3 1 50 force
execute as @e[tag=LaserKamea] at @s positioned ~ ~-1 ~ as @e[distance=..1.5] positioned ~ ~1 ~ unless score @s player = @e[tag=LaserKamea,limit=1,sort=nearest] player run effect give @s instant_damage 1 1 true
execute as @e[tag=LaserKamea] at @s positioned ~ ~-1 ~ as @e[distance=..1.5] positioned ~ ~1 ~ unless score @s player = @e[tag=LaserKamea,limit=1,sort=nearest] player run effect give @s wither 1 3 true
execute as @e[tag=LaserKamea] at @s positioned ~ ~-1 ~ as @e[distance=..1.5] positioned ~ ~1 ~ unless score @s player = @e[tag=LaserKamea,limit=1,sort=nearest] player run scoreboard players operation @s detect_kill = @e[tag=LaserKamea,limit=1,sort=nearest] player


execute as @e[tag=LaserKamea2] at @s run particle minecraft:dust_color_transition 1 1 0 0.7 0.7 0.9 1 ~ ~ ~ 0.3 0.3 0.3 1 50 force
execute as @e[tag=LaserKamea2] at @s positioned ^ ^ ^1 run particle minecraft:dust_color_transition 1 1 0 0.5 0.5 0.9 1 ~ ~ ~ 0.3 0.3 0.3 1 50 force
execute as @e[tag=LaserKamea2] at @s positioned ~ ~-1 ~ as @e[distance=..1.5] positioned ~ ~1 ~ unless score @s player = @e[tag=LaserKamea2,limit=1,sort=nearest] player run effect give @s instant_damage 1 2 true
execute as @e[tag=LaserKamea2] at @s positioned ~ ~-1 ~ as @e[distance=..1.5] positioned ~ ~1 ~ unless score @s player = @e[tag=LaserKamea2,limit=1,sort=nearest] player run effect give @s wither 1 3 true
execute as @e[tag=LaserKamea2] at @s positioned ~ ~-1 ~ as @e[distance=..1.5] positioned ~ ~1 ~ unless score @s player = @e[tag=LaserKamea2,limit=1,sort=nearest] player run scoreboard players operation @s detect_kill = @e[tag=LaserKamea2,limit=1,sort=nearest] player



execute as @e[tag=LaserKamea] at @s run tp @s ^ ^ ^2
execute as @e[tag=LaserKamea2] at @s run tp @s ^ ^ ^2


