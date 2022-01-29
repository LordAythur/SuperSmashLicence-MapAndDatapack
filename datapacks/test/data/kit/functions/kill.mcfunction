execute as @s[scores={crewmate=1}] at @s run playsound ssl:crewmate.kill ambient @a
execute as @s[scores={Doomfist=1}] at @s run playsound ssl:doomfist.kill ambient @a
execute as @s[scores={goku=1}] at @s run playsound ssl:goku.kill ambient @a
execute as @s[scores={assassin=1}] at @s run playsound ssl:assassin.kill ambient @a
execute as @s[scores={link=1}] at @s run playsound ssl:link.kill ambient @a
execute as @s[scores={pokemon=1}] at @s run playsound ssl:pokemon.kill ambient @a
execute as @s[scores={mario=1}] at @s run playsound ssl:mario.kill ambient @a
execute as @s[scores={emergency=1}] at @s run playsound ssl:emergency.kill ambient @a ~ ~ ~ 1 2
execute as @s[scores={yasuo=1}] at @s run playsound ssl:yasuo.kill ambient @a ~ ~ ~


effect give @s instant_health 1 2 true
scoreboard players add @s ultime 1000

scoreboard players reset @s kill