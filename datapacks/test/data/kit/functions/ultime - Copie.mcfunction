execute as @e[type=player] unless entity @s[scores={ultime=0..}] run scoreboard players set @s ultime 0
execute as @e[type=player] unless entity @s[scores={pourcenUltime=0..}] run scoreboard players set @s pourcenUltime 0


execute as @e[name="middle"] at @s as @e[distance=..200,type=player] at @s run scoreboard players add @s[scores={ultime=..1000}] ultime 1
execute as @e[name="middle"] at @s as @e[distance=..200,scores={coup_special=1..}] at @s run scoreboard players set @s pourcenUltime 0
execute as @e[name="middle"] at @s as @e[distance=..200,scores={coup_special=1..}] at @s run xp set @s 0 levels


execute as @e[scores={crewmate=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={crewmate=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={crewmate=1, ultime=60..,pourcenUltime=..999}] at @s run scoreboard players add @s pourcenUltime 10
execute as @e[scores={crewmate=1, ultime=60..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={crewmate=1, ultime=60..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 60


execute as @e[scores={Doomfist=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={Doomfist=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={Doomfist=1, ultime=40..,pourcenUltime=..999}] at @s run scoreboard players add @s pourcenUltime 10
execute as @e[scores={Doomfist=1, ultime=40..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={Doomfist=1, ultime=40..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 40


execute as @e[scores={bomberman=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={bomberman=1, pourcenUltime=..999,snowball=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={bomberman=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={bomberman=1, ultime=20..,pourcenUltime=..999}] at @s run scoreboard players add @s pourcenUltime 10
execute as @e[scores={bomberman=1, ultime=20..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={bomberman=1, ultime=20..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 20


execute as @e[scores={goku=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={goku=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={goku=1, ultime=30..,pourcenUltime=..99}] at @s run scoreboard players add @s pourcenUltime 10
execute as @e[scores={goku=1, ultime=40..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={goku=1, ultime=40..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 40


execute as @e[scores={emergency=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={emergency=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={emergency=1, ultime=30..,pourcenUltime=..99}] at @s run scoreboard players add @s pourcenUltime 10
execute as @e[scores={emergency=1, ultime=30..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={emergency=1, ultime=30..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 30


execute as @e[scores={yasuo=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={yasuo=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={yasuo=1, ultime=5..,pourcenUltime=..999}] at @s run scoreboard players add @s pourcenUltime 10
execute as @e[scores={yasuo=1, ultime=5..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={yasuo=1, ultime=5..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 5


execute as @e[scores={link=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 10
execute as @e[scores={link=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={link=1, ultime=20..,pourcenUltime=..999}] at @s run scoreboard players add @s pourcenUltime 10
execute as @e[scores={link=1, ultime=20..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={link=1, ultime=20..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 20



execute as @e[scores={mario=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players add @s ultime 100
execute as @e[scores={mario=1, pourcenUltime=..999,damage=1..}] at @s run scoreboard players set @s damage 0
execute as @e[scores={mario=1, ultime=1..,pourcenUltime=..999}] at @s run scoreboard players add @s pourcenUltime 100
execute as @e[scores={mario=1, ultime=1..,pourcenUltime=..1000}] at @s run xp add @s 1 levels
execute as @e[scores={mario=1, ultime=1..,pourcenUltime=..999}] at @s run scoreboard players remove @s ultime 20


execute as @e[scores={pourcenUltime=1000..}] unless score @s pourcenUltime matches 1001 at @s run function kit:giveult


