scoreboard players set @s wright 1

item replace entity @s container.0 with minecraft:player_head{display:{Name:"{\"text\":\"Badge d'avocat\"}"}, Enchantments:[{id:"knockback", lvl: 1}],SkullOwner:{Id:[I;2050860254,-2101590781,-1424696691,1452068644],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjgwOWQyZTY5NjEwZjFlNmI3NWZlMGQ0NTk4ZTQ0MWU1NjAzMjVkMmQ1MmQ5N2NmNjY4NTljNDRmYTNkOGE3OSJ9fX0="}]}}} 1
item replace entity @s container.1 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Objection !"}]'],Name:'[{"text":"Objection !"}]'},Tags:["Objection !"]} 1
item replace entity @s container.2 with minecraft:carrot_on_a_stick{CustomModelData:1,display:{Lore:['[{"text":"Maya !"}]'],Name:'[{"text":"Maya !"}]'},Tags:["Maya !"]} 1
item replace entity @s container.3 with minecraft:carrot_on_a_stick{CustomModelData:2,display:{Lore:['[{"text":"Pièce à conviction"}]'],Name:'[{"text":"Pièce à conviction"}]'},Tags:["Pièce à conviction"]} 1
execute as @s[scores={wright=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1b,ShowArms:1b,Small:1b,NoBasePlate:1b, HandItems:[{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-349305698,1432571383,-1098244983,305822113],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU0ODYxNWRmNmI3ZGRmM2FkNDk1MDQxODc2ZDkxNjliZGM5ODNhM2ZhNjlhMmFjYTEwN2U4ZjI1MWY3Njg3In19fQ=="}]}}}}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5592575}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5592575}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5592575}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1867494125,1241729458,-1887832804,-1955951182],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWEwMTZiM2E1MjZiNmI0MmJlZTNmZjIyZjQ0ZjA4OGY5MDYwOTJlYjkwODExZmE3MDg0NmY4NTQzMzZiYTNmYSJ9fX0="}]}}}}],CustomName:'{"text":"MiniMaya"}'}
execute as @s[scores={wright=1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,CustomName:'{"text":"MiniFey"}'}
scoreboard players set @e[name="MiniMaya"] noFollow 0

item replace entity @s armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]} 1