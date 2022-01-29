kill @e[name="Mini",type=armor_stand]
kill @e[name="MiniInv",type=armor_stand]
kill @e[name="vent",type=armor_stand]
kill @e[type=falling_block]

bossbar remove 50
bossbar add 50 "Joueur prêt"

kill @e[name="middle",type=armor_stand]
kill @e[name="kit",type=armor_stand]
summon armor_stand 1000 120 1000 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"middle"}'}
summon armor_stand 10032 124 9991 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"middle"}'}
summon armor_stand -1000 98 -1000 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"kit"}'}
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s Player 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s start 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s map 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s mode 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s team 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equipebleue 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equipejaune 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equiperouge 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equipeverte 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s finiTeam 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s vie 3


kill @e[type=falling_block]
kill @e[name="bombtp"]
kill @e[type=armor_stand,name="bomb"]

kill @e[type=item]

xp set @a 0 levels
xp set @a 0

scoreboard players reset @a
clear @a[gamemode=!creative]

scoreboard players set @e[name="middle"] ticks 0
scoreboard players set @e[name="middle"] seconds 0

team leave @a

team join PasEquipe @a

