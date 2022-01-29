effect give @s instant_health 1 200 true
effect give @s health_boost 25555 19 true

execute as @s[scores={vie=0..}] at @e[name="middle",type=armor_stand,limit=1] run tp @p
execute as @s[scores={vie=0..}] at @e[name="middle",type=armor_stand,limit=1,sort=nearest] run spreadplayers ~ ~ 25 200 false @s
execute as @s[scores={vie=0..}] at @s run execute as @s[scores={death=1}] at @s as @e[tag=Stun] if score @s player = @p player run kill @s
execute as @s[scores={vie=0..}] at @s run title @a times 20 60 20
execute as @s[scores={vie=0..}] at @s run title @a subtitle {"text":"Préparez-vous au combat","color":"gold"}
execute as @s[scores={vie=0..}] at @s run title @a title {"text":"Vous êtes mort","color":"dark_red"}
execute as @s[scores={vie=0..}] at @e[name="middle",type=armor_stand,limit=1,sort=nearest] run effect give @s resistance 2 200 true
execute as @s[scores={vie=0..}] at @e[name="middle",type=armor_stand,limit=1,sort=nearest] run scoreboard players set @s stun 40

execute if entity @s[scores={vie=0}] run gamemode spectator @s


scoreboard players set @s death 0
