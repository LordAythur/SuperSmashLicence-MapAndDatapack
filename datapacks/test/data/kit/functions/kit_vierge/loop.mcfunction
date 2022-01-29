###########################     Coup spécial    ####################################

clear @s[scores={coup_special=1}] minecraft:warped_fungus_on_a_stick

execute as @s[scores={coup_special=1..20}] at @s run particle minecraft:end_rod ~ ~10 ~ 0 0 0 0.1 1000 force
execute as @s[scores={coup_special=1..20}] at @s run particle minecraft:end_rod ~ ~10 ~ 0 0 0 0.1 1000 force
execute as @s[scores={coup_special=1..20}] at @s run particle minecraft:end_rod ~ ~10 ~ 0 0 0 0.1 1000 force

effect give @s[scores={coup_special=80}] resistance 6 100 true

gamemode adventure @s[scores={coup_special=160}]



execute as @s[scores={coup_special=200}] at @s run kill @e[limit=1,sort=nearest,tag=SpecialDoomfist]


execute as @s[scores={coup_special=200}] run function kit:goku/give_goku


item replace entity @s[scores={coup_special=200}] armor.head with minecraft:golden_helmet{Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]} 1
item replace entity @s[scores={coup_special=215}] armor.head with air 1

scoreboard players reset @s[scores={coup_special=215}] coup_special


scoreboard players add @s[scores={coup_special=1..}] coup_special 1


###########################     Compétence 1    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Super Sayan"]}}},scores={competences=1}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:carrot_on_a_stick{Tags:["Super Sayan"]} 1

scoreboard players set @s[scores={competence1=1}] rechargement1 200



item replace entity @s[scores={competence1=1..,rechargement1=0}] container.1 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Super Sayan"}]'],Name:'[{"text":"Super Sayan"}]'},Tags:["Super Sayan"]} 1

scoreboard players reset @s[scores={competence1=1}] competences
scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1

scoreboard players add @s[scores={competence1=1..}] competence1 1


###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Kamehameha"]}}},scores={competences=1}] at @s run scoreboard players add @s competence2 1
clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["Kamehameha"]} 1

scoreboard players set @s[scores={competence2=1}] rechargement2 100




item replace entity @s[scores={competence2=1..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Kamehameha"}]'],Name:'[{"text":"Kamehameha"}]'},Tags:["Kamehameha"]} 1

scoreboard players reset @s[scores={competence2=1}] competences
scoreboard players reset @s[scores={competence2=1..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1

###########################     Compétence 3    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Téléportation"]}}},scores={competences=1}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competences=1..,competence3=1}] minecraft:carrot_on_a_stick{Tags:["Téléportation"]} 1


scoreboard players set @s[scores={competence3=1}] rechargement3 200




scoreboard players reset @s[scores={competence3=1}] competences
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Téléportation"}]'],Name:'[{"text":"Téléportation"}]'},Tags:["Téléportation"]} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3

