execute at @s as @a if score @s player = @p detect_kill run scoreboard players add @s kill 1
execute at @s as @a if score @s player = @p detect_kill run tellraw @a ["",{"selector":"@p"},{"text":" s'est fait défoncé par ","color":"white"},{"selector":"@s"}]

execute at @s as @a if score @s[scores={link=1}] player = @p detect_kill run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["Coeur"],ArmorItems:[{},{},{},{id:"minecraft:apple",tag:{CustomModelData:1},Count:1b}],Small:1b}

scoreboard players remove @s[scores={vie=0..}] vie 1


execute as @s[scores={assassin=1}] at @s as @e[tag=MoveAssassin] if score @s player = @p player run kill @s



execute if entity @s[scores={vie=0}] run tellraw @a ["",{"selector":"@s"},{"text":" est éliminé :(","color":"white"}]

execute store result score @s count if entity @a[scores={vie=1..}]
execute as @s[scores={count=1}] run playsound ssl:game ambient @a ~ ~ ~ 1000 1
execute as @s[scores={count=1}] run title @a times 20 100 20
execute as @s[scores={count=1}] run title @a subtitle {"text":"a gagné la partie !","color":"gold"}
execute as @s[scores={count=1}] run title @a title {"selector":"@a[scores={vie=1..}]","color":"dark_red"}
execute as @s[scores={count=1}] run execute as @e[scores={start=100}] at @s run scoreboard players set @e[scores={start=100}] start 0
execute as @s[scores={count=1}] run execute as @a[scores={vie=1..}] at @s run scoreboard players set @s findepartie 1

scoreboard players set @s death 2