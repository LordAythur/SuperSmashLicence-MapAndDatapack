execute as @s run scoreboard players remove @s stunEmergency 1
execute as @s[scores={StunEmergency=..0}] run scoreboard players reset @s StunEmergency

execute at @s run particle minecraft:dust 1.000 0.333 0.000 1 ^ ^ ^ 0.5 1 0.5 0.1 10 force