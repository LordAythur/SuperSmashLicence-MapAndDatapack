scoreboard players set @s crewmate 1

give @s minecraft:iron_sword{CustomModelData:3,display:{Lore:['[{"text":"Couteau de l\'Imposteur"}]']},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1763416271,1976258288,-1396455771,362432457],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1400636312,-1853734742,-2027876576,-1267568592],Slot:"mainhand"}],Unbreakable:1b} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Utilise la compétence"}]','[{"text":"une première fois"}]','[{"text":"pour poser une"}]','[{"text":"plaque d\'ahération"}]','[{"text":""}]','[{"text":"Puis réutilise la"}]','[{"text":"une seconde fois"}]','[{"text":"pour y retourner."}]'],Name:'[{"text":"Ventilation"}]'},Tags:["Vent"]} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Rend aveugle"}]','[{"text":"les joueurs"}]','[{"text":"autour de toi et"}]','[{"text":"te donne plus"}]','[{"text":"de force."}]'],Name:'[{"text":"Lumières"}]'},Tags:["Light"]} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:3,display:{Lore:['[{"text":"Projete ton petit"}]','[{"text":"coéquipier et le"}]','[{"text":"fais exploser au"}]','[{"text":"contact du sol."}]'],Name:'[{"text":"Lancer de Coéquipier"}]'},Tags:["Crewmate Throw"]} 1
#give @s minecraft:warped_fungus_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Ult"}]'],Name:'[{"text":"Ult"}]'},Tags:["Ult"]} 1

item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1
advancement grant @s only kit:crewmate