execute at @s as @a if score @s player = @p detect_kill run scoreboard players add @s kill 1
execute at @s as @a if score @s player = @p detect_kill run tellraw @a ["",{"selector":"@p"},{"text":" s'est fait défoncé par ","color":"white"},{"selector":"@s"}]

execute at @s as @a if score @s[scores={link=1}] player = @p detect_kill run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["Coeur"],ArmorItems:[{},{},{},{id:"minecraft:apple",tag:{CustomModelData:1},Count:1b}],Small:1b}

scoreboard players remove @s[scores={vie=0..}] vie 1


execute as @s[scores={assassin=1}] at @s as @e[tag=MoveAssassin] if score @s player = @p player run kill @s



execute if entity @s[scores={vie=0}] run tellraw @a ["",{"selector":"@s"},{"text":" est éliminé :(","color":"white"}]
execute if entity @s[scores={vie=0},team=EquipeBleue] run scoreboard players remove @e[name="kit",limit=1] equipebleue 1
execute if entity @s[scores={vie=0},team=EquipeRouge] run scoreboard players remove @e[name="kit",limit=1] equiperouge 1
execute if entity @s[scores={vie=0},team=EquipeJaune] run scoreboard players remove @e[name="kit",limit=1] equipejaune 1
execute if entity @s[scores={vie=0},team=EquipeVerte] run scoreboard players remove @e[name="kit",limit=1] equipeverte 1

execute as @e[name="kit",scores={equipeverte=0,equiperouge=0,equipejaune=0}] at @s run scoreboard players set @s equipebleue 1000
execute as @e[name="kit",scores={equipebleue=0,equiperouge=0,equipejaune=0}] at @s run scoreboard players set @s equipeverte 1000
execute as @e[name="kit",scores={equipeverte=0,equipebleue=0,equipejaune=0}] at @s run scoreboard players set @s equiperouge 1000
execute as @e[name="kit",scores={equipeverte=0,equiperouge=0,equipebleue=0}] at @s run scoreboard players set @s equipejaune 1000

execute as @e[name="kit",scores={equipeverte=1000}] at @s run scoreboard players set @s finiTeam 1
execute as @e[name="kit",scores={equipebleue=1000}] at @s run scoreboard players set @s finiTeam 1
execute as @e[name="kit",scores={equipejaune=1000}] at @s run scoreboard players set @s finiTeam 1
execute as @e[name="kit",scores={equiperouge=1000}] at @s run scoreboard players set @s finiTeam 1

execute store result score @s count if entity @a[scores={vie=1..}]

execute as @e[scores={finiTeam=1}] run playsound ssl:game ambient @a ~ ~ ~ 1000 1
execute as @e[scores={finiTeam=1}] run title @a times 20 100 20
execute as @e[scores={finiTeam=1}] run title @a subtitle {"text":"a gagnée la partie !","color":"gold"}
execute as @e[scores={finiTeam=1,equipebleue=1000}] run execute as @a[scores={vie=1..},team=EquipeBleue] at @s run title @a title {"text":"Equipe Bleue","color":"aqua"}
execute as @e[scores={finiTeam=1,equiperouge=1000}] run execute as @a[scores={vie=1..},team=EquipeRouge] at @s run title @a title {"text":"Equipe Rouge","color":"red"}
execute as @e[scores={finiTeam=1,equipejaune=1000}] run execute as @a[scores={vie=1..},team=EquipeJaune] at @s run title @a title {"text":"Equipe Jaune","color":"yellow"}
execute as @e[scores={finiTeam=1,equipeverte=1000}] run execute as @a[scores={vie=1..},team=EquipeVerte] at @s run title @a title {"text":"Equipe Verte","color":"dark_green"}

execute as @e[scores={finiTeam=1}] run execute as @e[scores={start=100}] at @s run scoreboard players set @e[scores={start=100}] start 0
execute as @e[scores={finiTeam=1}] run execute as @a[scores={vie=1..}] at @s run scoreboard players set @s findepartie 1

scoreboard players set @s death 2