scoreboard players set @s mario 1


item replace entity @s container.1 with minecraft:carrot_on_a_stick{CustomModelData:14,display:{Lore:['[{"text":"Fire"}]'],Name:'[{"text":"Fire"}]'},Tags:["Fire"]} 1
item replace entity @s container.2 with minecraft:carrot_on_a_stick{CustomModelData:13,display:{Lore:['[{"text":"Twomp"}]'],Name:'[{"text":"Twomp"}]'},Tags:["Twomp"]} 1
item replace entity @s container.3 with minecraft:carrot_on_a_stick{CustomModelData:12,display:{Lore:['[{"text":"Bill Balle"}]'],Name:'[{"text":"Bill Balle"}]'},Tags:["Bill Balle"]} 1


item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1
#advancement grant @s only kit:link