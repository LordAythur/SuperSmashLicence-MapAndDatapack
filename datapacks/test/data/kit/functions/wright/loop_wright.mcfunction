execute as @e[name="MiniMaya", scores={noFollow=0}] at @e[name="MiniFey"] positioned ^ ^ ^-1 run tp @s ~ ~15 ~ ~ ~
execute as @e[name="MiniFey"] at @p[scores={wright=1}] run tp @s ~ ~-15 ~ ~ 0

###########################     Compétence 1    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Objection !"]}}},scores={competences=1}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:carrot_on_a_stick{Tags:["Objection !"]} 1

scoreboard players set @s[scores={competence1=1}] rechargement1 200

execute as @s[scores={competence1=1}] at @s run playsound ssl:wright.objection ambient @a ~ ~ ~ 10000 1

item replace entity @s[scores={competence1=1..,rechargement1=0}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Objection !"}]'],Name:'[{"text":"Objection !"}]'},Tags:["Objection !"]} 1

scoreboard players reset @s[scores={competence1=1}] competences
scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1

scoreboard players add @s[scores={competence1=1..}] competence1 1


###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Maya !"]}}},scores={competences=1}] at @s run scoreboard players add @s competence2 1
clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["Maya !"]} 1

scoreboard players set @s[scores={competence2=1}] rechargement2 100




item replace entity @s[scores={competence2=1..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Maya !"}]'],Name:'[{"text":"Maya !"}]'},Tags:["Maya !"]} 1

scoreboard players reset @s[scores={competence2=1}] competences
scoreboard players reset @s[scores={competence2=1..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1

###########################     Compétence 3    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Pièce à conviction"]}}},scores={competences=1}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competences=1..,competence3=1}] minecraft:carrot_on_a_stick{Tags:["Pièce à conviction"]} 1


scoreboard players set @s[scores={competence3=1}] rechargement3 200




scoreboard players reset @s[scores={competence3=1}] competences
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Pièce à conviction"}]'],Name:'[{"text":"Pièce à conviction"}]'},Tags:["Pièce à conviction"]} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3

