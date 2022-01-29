clear @p
effect clear @s
xp set @s 0 levels


execute as @p if entity @s[scores={crewmate=1}] run function kit:crewmate/give_crewmate
execute as @p if entity @s[scores={bomberman=1}] run function kit:bomberman/give_bomberman
execute as @p if entity @s[scores={Doomfist=1}] run function kit:doomfist/give_doomfist
execute as @p if entity @s[scores={goku=1}] run function kit:goku/give_goku
execute as @p if entity @s[scores={wright=1}] run function kit:wright/give_wright
execute as @p if entity @s[scores={emergency=1}] run function kit:emergency/give_emergency
execute as @p if entity @s[scores={yasuo=1}] run function kit:yasuo/give_yasuo
execute as @p if entity @s[scores={link=1}] run function kit:link/give_link
execute as @p if entity @s[scores={mario=1}] run function kit:mario/give_mario
execute as @p if entity @s[scores={pokemon=1}] run function kit:pokemon/give_pokemon
execute as @p if entity @s[scores={shrek=1}] run function kit:shrek/give_shrek
execute as @p if entity @s[scores={assassin=1}] run function kit:assassin/give_assassin

scoreboard players set @p player 1
execute as @p run function kit:player_score


effect give @p instant_health 1 200 true
effect give @p health_boost 25555 19 true