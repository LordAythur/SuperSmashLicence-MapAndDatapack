scoreboard players add @s flyYasuo 1

execute at @s positioned ~ ~ ~ run effect give @a[distance=..4] levitation 1 20 true
execute at @s positioned ~ ~5 ~ run effect give @a[distance=..4] levitation 1 20 true
execute at @s positioned ~ ~-5 ~ run effect give @a[distance=..4] levitation 1 20 true


execute at @s positioned ~ ~-5 ~ run particle poof ~ ~ ~ 2 2 2 0 10 force
execute at @s positioned ~ ~ ~ run particle poof ~ ~ ~ 2 2 2 0 10 force
execute at @s positioned ~ ~5 ~ run particle poof ~ ~ ~ 2 2 2 0 10 force

kill @s[scores={flyYasuo=100..}]