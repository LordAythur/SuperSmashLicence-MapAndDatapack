scoreboard players set @a vie 3
execute as @e[name="kit",scores={map=2}] at @p run execute as @e[name="middle",type=armor_stand,limit=1,sort=nearest] at @s run spreadplayers ~ ~ 25 200 false @a[gamemode=adventure]
execute as @e[name="kit",scores={map=1}] at @p run execute as @e[name="middle",type=armor_stand,limit=1,sort=furthest] at @s run spreadplayers ~ ~ 25 200 false @a[gamemode=adventure]
execute as @e[name="kit",scores={map=0}] at @p run execute as @e[name="middle",type=armor_stand,limit=1,sort=random] at @s run spreadplayers ~ ~ 25 200 false @a[gamemode=adventure]

execute as @p at @p run kill @e[name="middle",sort=furthest,limit=1]

execute as @e[name="middle",type=armor_stand,limit=1,sort=nearest] at @s run scoreboard players set @s seconds 0

scoreboard players set @s ultime 0
scoreboard players set @s pourcenUltime 0

execute as @a at @a run function kit:give