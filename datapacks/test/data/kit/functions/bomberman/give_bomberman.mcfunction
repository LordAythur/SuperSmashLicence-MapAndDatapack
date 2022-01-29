scoreboard players set @s bomberman 1

give @s minecraft:iron_sword{CustomModelData:1,display:{Lore:['[{"text":"Sword"}]']},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1763416271,1976258288,-1396455771,362432457],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1
give @s minecraft:snowball{CustomModelData:1,display:{Lore:['[{"text":"Bombe"}]'],Name:'[{"text":"Bombe"}]'}} 3
give @s minecraft:carrot_on_a_stick{CustomModelData:6,display:{Lore:['[{"text":"Kick"}]'],Name:'[{"text":"Kick"}]'},Tags:["Kick"]} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:8,display:{Lore:['[{"text":"Bomberman Fly"}]'],Name:'[{"text":"Bomberman Fly"}]'},Tags:["Bomberman Fly"]} 1
#give @s minecraft:warped_fungus_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Ult"}]'],Name:'[{"text":"Ult"}]'},Tags:["Ult"]} 1


item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:blast_protection",lvl:3s}]} 1
advancement grant @s only kit:bomberman