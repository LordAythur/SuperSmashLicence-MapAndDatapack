execute as @p[gamemode=adventure] at @s run scoreboard players add @e[name="middle",distance=..300] ticks 1

execute as @e[name="middle",scores={ticks=4200,seconds=0}] at @a run playsound ssl:music master @a ~ ~ ~ 0.05 1

scoreboard players set @e[name="middle",scores={ticks=4200..}] ticks 0

execute store result score @e[name="middle",limit=1] Player if entity @a[scores={vie=1}]
execute store result score @e[name="middle",limit=1] PlayerCount if entity @a[scores={vie=1..}]

execute as @e[name="middle",scores={Player=2,PlayerCount=2}] at @s run scoreboard players add @s seconds 1
execute as @e[name="middle",scores={Player=2,seconds=1,PlayerCount=2}] at @s run stopsound @a
execute as @e[name="middle",scores={Player=2,seconds=2,PlayerCount=2}] at @a run playsound ssl:final master @a ~ ~ ~ 0.05 1
execute as @e[name="middle",scores={Player=2,seconds=2000..,PlayerCount=2}] at @s run scoreboard players set @s seconds 0

