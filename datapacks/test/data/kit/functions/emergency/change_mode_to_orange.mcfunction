scoreboard players set @s ModeBoule 2
scoreboard players set @s competence2 2


execute as @s at @s as @e[scores={TimeBoule=1..}] if score @s player = @p player run item replace entity @s armor.head with minecraft:player_head{CustomModelData:1,SkullOwner:{Id:[I;-329061771,1076643067,-1888370960,22693428],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTA4Yjc3MmVjYWVlNzA2MjM1ZDFhZGJmMGI5YTI5YjU4YmE5YzBlZDYwZGU2ZjEwZWZiMWE3Zjg2ZDllIn19fQ=="}]}},Unbreakable:1b}
execute as @s at @s as @e[scores={TimeBoule=1..}] if score @s player = @p player run scoreboard players set @s ModeBoule 2
