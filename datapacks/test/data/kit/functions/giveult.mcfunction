item replace entity @s[scores={crewmate=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Ult"}]'],Name:'[{"text":"Coup spécial"}]'},Tags:["Ult"],Enchantments:[{}]} 1
item replace entity @s[scores={bomberman=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Ult"}]'],Name:'[{"text":"Coup spécial"}]'},Tags:["Ult"],Enchantments:[{}]} 1
item replace entity @s[scores={Doomfist=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:4,display:{Lore:['[{"text":"Meteor Strike"}]'],Name:'[{"text":"Coup spécial"}]'},Tags:["Meteor Strike"],Enchantments:[{}]} 1
item replace entity @s[scores={goku=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:7,display:{Lore:['[{"text":"Genkidama"}]'],Name:'[{"text":"Coup spécial"}]'},Tags:["Genkidama"],Enchantments:[{}]} 1
item replace entity @s[scores={emergency=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:6,display:{Lore:['[{"text":"Trou Noir"}]'],Name:'[{"text":"Trou Noir"}]'},Tags:["Trou Noir"],Enchantments:[{}]} 1
item replace entity @s[scores={yasuo=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:8,display:{Lore:['[{"text":"Dernier Souffle"}]'],Name:'[{"text":"Dernier Souffle"}]'},Tags:["Dernier Souffle"],Enchantments:[{}]} 1
item replace entity @s[scores={link=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:3,display:{Lore:['[{"text":"Cinetis"}]'],Name:'[{"text":"Cinetis"}]'},Tags:["Cinetis"],Enchantments:[{}]} 1
item replace entity @s[scores={mario=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:0,display:{Lore:['[{"text":"Fire storm"}]'],Name:'[{"text":"Fire storm"}]'},Tags:["Fire storm"],Enchantments:[{}]} 1
item replace entity @s[scores={pokemon=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:0,display:{Lore:['[{"text":"Cinetis"}]'],Name:'[{"text":"Cinetis"}]'},Tags:["Cinetis"],Enchantments:[{}]} 1
item replace entity @s[scores={assassin=1}] container.4 with minecraft:warped_fungus_on_a_stick{CustomModelData:5,display:{Lore:['[{"text":"Pistolet"}]'],Name:'[{"text":"Pistolet"}]'},Tags:["Pistolet"],Enchantments:[{}]} 1



xp set @s 100 levels

execute as @s[scores={Doomfist=1}] at @s run playsound ssl:doomfist.ult.ready ambient @p
execute as @s[scores={crewmate=1}] at @s run playsound ssl:crewmate.ult ambient @p
execute as @s[scores={assassin=1}] at @s run playsound ssl:assassin.give_ult ambient @p
execute as @s[scores={bomberman=1}] at @s run playsound ssl:bomberman.ult ambient @p
execute as @s[scores={pokemon=1}] at @s run playsound ssl:pokemon.ult ambient @p
execute as @s[scores={link=1}] at @s run playsound ssl:link.give_ult ambient @p
execute as @s[scores={emergency=1}] at @s run playsound ssl:emergency.give_ult ambient @p

execute as @s[scores={yasuo=1}] at @s run playsound ssl:yasuo.give_ult ambient @p
execute as @s[scores={yasuo=1}] at @s run effect give @s absorption 20 6

scoreboard players set @s pourcenUltime -1
scoreboard players set @s ultime 0
