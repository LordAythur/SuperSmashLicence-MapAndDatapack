scoreboard players add @s Wall 1


execute at @s as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s
execute at @s positioned ~ ~1 ~ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s
execute at @s positioned ~ ~-1 ~ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s

execute at @s positioned ^1 ^ ^ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s
execute at @s positioned ^1 ^1 ^ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s
execute at @s positioned ^1 ^-1 ^ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s

execute at @s positioned ^-1 ^ ^ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s
execute at @s positioned ^-1 ^1 ^ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s
execute at @s positioned ^-1 ^-1 ^ as @e[distance=..2,tag=!WindWall,tag=Projectile] run kill @s

execute at @s run particle poof ^-1 ^0.5 ^ 0 0.5 0 0 10 force @a
execute at @s run particle poof ^-0.5 ^0.5 ^ 0 0.5 0 0 10 force @a
execute at @s run particle poof ^ ^0.5 ^ 0 0.5 0 0 10 force @a
execute at @s run particle poof ^0.5 ^0.5 ^ 0 0.5 0 0 10 force @a
execute at @s run particle poof ^1 ^0.5 ^ 0 0.5 0 0 10 force @a

kill @s[scores={Wall=200}]