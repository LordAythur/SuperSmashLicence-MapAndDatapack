scoreboard players set @s link 1

item replace entity @s container.0 with minecraft:iron_sword{CustomModelData:2,display:{Lore:['[{"text":"Master Sword"}]']},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1763416271,1976258288,-1396455771,362432457],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1
item replace entity @s container.1 with bow{CustomModelData:1,display:{Name:'{"text":"Arc Magnétique"}'},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]} 1
item replace entity @s container.2 with minecraft:carrot_on_a_stick{CustomModelData:7,display:{Lore:['[{"text":"Grappin"}]'],Name:'[{"text":"Grappin"}]'},Tags:["Grappin"]} 1
item replace entity @s container.3 with potion{display:{Name:'{"text":"Potion"}'},HideFlags:99,CustomPotionEffects:[{Id:1b,Amplifier:1b,Duration:100},{Id:5b,Amplifier:0b,Duration:100},{Id:22b,Amplifier:2b,Duration:200}],CustomPotionColor:16711680} 1


item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1
#advancement grant @s only kit:link