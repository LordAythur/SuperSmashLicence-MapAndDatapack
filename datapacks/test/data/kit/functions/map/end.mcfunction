execute as @s at @s run scoreboard players add @s ticksEnd 1 
execute as @s[scores={ticksEnd=20}] at @s run scoreboard players add @s secondesEnd 1

execute as @s[scores={secondesEnd=1,ticksEnd=1}] run stopsound @a

execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,Doomfist=1}] at @a run playsound ssl:doomfist.win ambient @a ~ ~ ~ 0.5 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,crewmate=1}] at @a run playsound ssl:crewmate.win ambient @a ~ ~ ~ 0.5 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,pokemon=1}] at @a run playsound ssl:pokemon.win ambient @a ~ ~ ~ 0.5 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,mario=1}] at @a run playsound ssl:mario.win ambient @a ~ ~ ~ 0.5 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,goku=1}] at @a run playsound ssl:goku.win ambient @a ~ ~ ~ 0.2 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,link=1}] at @a run playsound ssl:link.win ambient @a ~ ~ ~ 0.5 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,yasuo=1}] at @a run playsound ssl:yasuo.win ambient @a ~ ~ ~ 0.5 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,bomberman=1}] at @a run playsound ssl:bomberman.win ambient @a ~ ~ ~ 0.5 1
execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=0}] at @a run execute as @a[scores={vie=1..,assassin=1}] at @a run playsound ssl:assassin.win ambient @a ~ ~ ~ 0.5 1

execute as @s[scores={secondesEnd=1,ticksEnd=1}] run execute as @e[scores={mode=1}] at @a run playsound ssl:team_win ambient @a ~ ~ ~ 0.2 1

execute as @s at @a[distance=1..,scores={ticksEnd=20}] run execute as @a[distance=1..] at @s run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680],FadeColors:[I;1114367]}]}}}}
execute as @s[scores={ticksEnd=20}] at @s run scoreboard players set @s ticksEnd 0

execute as @s[scores={secondesEnd=14,Doomfist=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=14,Doomfist=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=15,crewmate=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=15,crewmate=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=15,pokemon=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=15,pokemon=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=15,mario=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=15,mario=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=13,goku=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=13,goku=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=12,link=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=12,link=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=18,yasuo=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=18,yasuo=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=9,bomberman=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=9,bomberman=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=23,assassin=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=23,assassin=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=15,emergency=1}] at @s run execute as @e[scores={mode=0}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=15,emergency=1}] at @s run execute as @e[scores={mode=0}] at @a run gamemode adventure @a

execute as @s[scores={secondesEnd=19}] at @s run execute as @e[scores={mode=1}] at @a run tp @a 0 102 0
execute as @s[scores={secondesEnd=19}] at @s run execute as @e[scores={mode=1}] at @a run gamemode adventure @a

execute as @s at @s run effect give @a resistance 10000 255 true
execute as @s at @s run effect give @a regeneration 10000 255 true

execute as @s[scores={secondesEnd=14,Doomfist=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=15,mario=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=15,crewmate=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=15,pokemon=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=13,goku=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=12,link=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=18,yasuo=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=9,bomberman=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=23,assassin=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame
execute as @s[scores={secondesEnd=15,emergency=1}] at @s run execute as @e[scores={mode=0}] at @a run function kit:clean_endgame

execute as @s[scores={secondesEnd=19}] at @s run execute as @e[scores={mode=1}] at @a run function kit:clean_endgame

scoreboard players set @e[name="middle"] ticks 0
scoreboard players set @e[name="middle"] seconds 0
