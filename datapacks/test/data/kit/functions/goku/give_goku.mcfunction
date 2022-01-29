scoreboard players set @s goku 1

effect give @s strength 255555 0 true
item replace entity @s container.1 with minecraft:carrot_on_a_stick{CustomModelData:33,display:{Lore:['[{"text":"Super Saiyan"}]'],Name:'[{"text":"Super Saiyan"}]'},Tags:["Super Saiyan"]} 1
item replace entity @s container.2 with minecraft:carrot_on_a_stick{CustomModelData:34,display:{Lore:['[{"text":"Kamehameha"}]'],Name:'[{"text":"Kamehameha"}]'},Tags:["Kamehameha"]} 1
item replace entity @s container.3 with minecraft:carrot_on_a_stick{CustomModelData:32,display:{Lore:['[{"text":"Téléportation"}]'],Name:'[{"text":"Téléportation"}]'},Tags:["Téléportation"]} 1


item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1
advancement grant @s only kit:goku