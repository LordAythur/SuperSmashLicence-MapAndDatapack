scoreboard players set @s Doomfist 1
give @s minecraft:golden_sword{CustomModelData:1,display:{Lore:['[{"text":"Doomfist Punch"}]'],Name:'[{"text":"Epee"}]'},Tags:["Doomfist Punch"],HideFlags:7,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1763416271,1976258288,-1396455771,362432457],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:9,display:{Lore:['[{"text":"Doomfist Buff"}]'],Name:'[{"text":"Cours et tape :b"}]'},Tags:["Doomfist Buff"]} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:10,display:{Lore:['[{"text":"Doomfist Up"}]'],Name:'[{"text":"Upercut"}]'},Tags:["Doomfist Up"]} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:11,display:{Lore:['[{"text":"Doomfist Q"}]'],Name:'[{"text":"Fonce devant"}]'},Tags:["Doomfist Q"]} 1
#give @s minecraft:warped_fungus_on_a_stick{CustomModelData:3,display:{Lore:['[{"text":"Meteor Strike"}]'],Name:'[{"text":"Coup spécial"}]'},Tags:["Meteor Strike"]} 1


item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1

advancement grant @s only kit:doomfist