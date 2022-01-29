#execute at @s run tp @s ~ ~ ~ ~10 ~

execute at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0 0.2 1 1 force

execute at @s as @p[distance=..1,gamemode=!spectator] if entity @s[scores={link=1}] unless entity @s[scores={death=1..}] run effect give @s instant_health 1 1 true
execute at @s as @p[distance=..1,gamemode=!spectator] if entity @s[scores={link=1}] unless entity @s[scores={death=1..}] run effect give @s speed 1 2 true
execute at @s as @p[distance=..1,gamemode=!spectator] if entity @s[scores={link=1}] unless entity @s[scores={death=1..}] at @s run playsound ssl:link.heal ambient @a ~ ~ ~
execute at @s as @p[distance=..1,gamemode=!spectator] unless entity @s[scores={death=1..}] run kill @e[tag=Coeur,limit=1,sort=nearest]