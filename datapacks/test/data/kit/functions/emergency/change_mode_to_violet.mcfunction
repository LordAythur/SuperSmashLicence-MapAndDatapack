scoreboard players set @s ModeBoule 1
scoreboard players set @s competence2 2


execute as @s at @s as @e[scores={TimeBoule=1..}] if score @s player = @p player run item replace entity @s armor.head with minecraft:player_head{CustomModelData:1,SkullOwner:{Id:[I;1299596657,-2014624875,-1267160830,2012116301],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQ1ZjM5MzE4ODkwYThhYmZlZTViMzIwYjM1Yjk1OWZjNjZlMTI1ZThmOGNmM2I3MDY2ZDI0ZjY1ZGU0YjkifX19"}]}},Unbreakable:1b}
execute as @s at @s as @e[scores={TimeBoule=1..}] if score @s player = @p player run scoreboard players set @s ModeBoule 1