scoreboard players add @s BalleAssassin 1

execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a

execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run scoreboard players operation @s detect_kill = @e[sort=nearest,tag=BalleAssassin,limit=1] player
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a



execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a


execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a

execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a

execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a

execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a

execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a

execute at @s run tp @s ^ ^ ^0.5
execute at @s unless block ~ ~ ~ air run kill @s
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..1.2] unless score @s player = @e[tag=BalleAssassin,sort=nearest,limit=1] player run effect give @s instant_damage 1 0 true
execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force @a




kill @s[scores={BalleAssassin=100..}]