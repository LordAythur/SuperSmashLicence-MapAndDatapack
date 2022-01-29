scoreboard players set @s pokemon 1
scoreboard players set @s chargeFly 10
scoreboard players set @s demeteros 1
scoreboard players set @s rechargement2 0

give @s minecraft:iron_sword{CustomModelData:0,display:{Lore:['[{"text":"Sword"}]']},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1763416271,1976258288,-1396455771,362432457],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1
give @s minecraft:snowball
give @s minecraft:carrot_on_a_stick{CustomModelData:0,display:{Lore:['[{"text":"Switch"}]'],Name:'[{"text":"Switch"}]'},Tags:["Switch"]} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:0,display:{Lore:['[{"text":"Attack"}]'],Name:'[{"text":"Attack"}]'},Tags:["Attack"]} 1


item replace entity @a armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1