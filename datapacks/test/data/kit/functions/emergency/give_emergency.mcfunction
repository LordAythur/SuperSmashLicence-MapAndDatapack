scoreboard players set @s emergency 1
scoreboard players set @s ModeBouleTP 1

give @s minecraft:diamond_sword{CustomModelData:1,display:{Lore:['[{"text":"Emergency Sword"}]'],Name:'[{"text":"Emergency Sword"}]'},Tags:["Emergency Sword"],HideFlags:7,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1763416271,1976258288,-1396455771,362432457],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1
item replace entity @s container.1 with minecraft:carrot_on_a_stick{CustomModelData:28,display:{Lore:['[{"text":"BouleTP"}]'],Name:'[{"text":"BouleTP"}]'},Tags:["BouleTP"]} 1
item replace entity @s container.2 with minecraft:carrot_on_a_stick{CustomModelData:27,display:{Lore:['[{"text":"BouleMove"}]'],Name:'[{"text":"BouleMove"}]'},Tags:["BouleMove"]} 1
item replace entity @s container.3 with minecraft:carrot_on_a_stick{CustomModelData:29,display:{Lore:['[{"text":"Le cube"}]'],Name:'[{"text":"Le cube"}]'},Tags:["Le cube"]} 1

item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1