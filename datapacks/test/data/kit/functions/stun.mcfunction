execute as @a[scores={root=1..}] at @s as @e[tag=Stun] if score @s player = @p player at @s as @a[scores={root=1..}] if score @s player = @e[tag=Stun,limit=1,sort=nearest] player run tp @s ~ ~ ~

execute as @a[scores={stun=1..}] at @s as @e[tag=Stun] if score @s player = @p player at @s as @a[scores={stun=1..}] if score @s player = @e[tag=Stun,limit=1,sort=nearest] player run tp @s ~ ~ ~ ~ ~



execute as @a[scores={stun=1..}] run scoreboard players set @s spawnstun 0
execute as @a[scores={stun=1..}] at @s as @e[tag=Stun] if score @s player = @p player run scoreboard players set @p spawnstun 1
execute as @a[scores={stun=1..,spawnstun=0}] at @s run summon armor_stand ~ ~ ~ {Tags:["Stun"],Invisible:1b,NoGravity:1b,DisabledSlots:2039583}
execute as @a[scores={stun=1..,spawnstun=0}] at @s as @e[tag=Stun,distance=..0.1] unless entity @s[scores={player=0..}] run tp @s ~ ~ ~ ~ ~
execute as @a[scores={stun=1..,spawnstun=0}] at @s as @e[tag=Stun,distance=..0.1] unless entity @s[scores={player=0..}] run scoreboard players operation @s player = @p player




execute as @a[scores={root=1..}] run scoreboard players set @s spawnstun 0
execute as @a[scores={root=1..}] at @s as @e[tag=Stun,] if score @s player = @p player run scoreboard players set @p spawnstun 1
execute as @a[scores={root=1..,spawnstun=0}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Stun"],Duration:50000}
execute as @a[scores={root=1..,spawnstun=0}] at @s as @e[tag=Stun,distance=..0.1] unless entity @s[scores={player=0..}] run tp @s ~ ~ ~ ~ ~
execute as @a[scores={root=1..,spawnstun=0}] at @s as @e[tag=Stun,distance=..0.1] unless entity @s[scores={player=0..}] run scoreboard players operation @s player = @p player



scoreboard players remove @a[scores={stun=1..}] stun 1
scoreboard players remove @a[scores={root=1..}] root 1


effect give @a[scores={stun=0}] slow_falling 1 1 true
execute as @a[scores={stun=0}] at @s as @e[tag=Stun] if score @s player = @p player run kill @s
scoreboard players reset @a[scores={stun=0}] stun



effect give @a[scores={root=0}] slow_falling 1 1 true
execute as @a[scores={root=0}] at @s as @e[tag=Stun] if score @s player = @p player run kill @s
scoreboard players reset @a[scores={root=0}] root






