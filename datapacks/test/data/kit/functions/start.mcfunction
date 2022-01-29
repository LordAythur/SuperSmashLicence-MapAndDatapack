function kit:doomfist/start_doomfist
function kit:crewmate/start_crewmate
function kit:bomberman/start_bomberman
function kit:goku/start_goku
function kit:wright/start_wright
function kit:emergency/start_emergency
function kit:yasuo/start_yasuo
function kit:link/start_link
function kit:mario/start_mario
function kit:pokemon/start_pokemon
function kit:assassin/start_assassin

scoreboard objectives add competences minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add coup_special minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add competence1 dummy
scoreboard objectives add competence2 dummy
scoreboard objectives add competence3 dummy
scoreboard objectives add rechargement1 dummy
scoreboard objectives add rechargement2 dummy
scoreboard objectives add rechargement3 dummy
scoreboard objectives add vie dummy
scoreboard objectives add death deathCount
scoreboard objectives add kill playerKillCount
scoreboard objectives add ultime dummy
scoreboard objectives add game dummy
scoreboard objectives add pourcenUltime dummy
scoreboard objectives add count dummy
scoreboard objectives add countmax dummy
scoreboard objectives add countstart dummy
scoreboard objectives add start dummy
scoreboard objectives add detect_kill dummy
scoreboard objectives add takeDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy
scoreboard objectives add player dummy
scoreboard objectives add start dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add secondesEnd dummy
scoreboard objectives add ticksEnd dummy
scoreboard objectives add findepartie dummy
scoreboard objectives add snowball minecraft.used:minecraft.snowball
scoreboard objectives add snowballcount dummy
scoreboard objectives add instantBoom dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add aleatoire dummy
scoreboard objectives add PlayerCount dummy
scoreboard objectives add pokeball dummy
scoreboard objectives add RANDOM dummy

scoreboard objectives add root dummy
scoreboard objectives add stun dummy
scoreboard objectives add spawnstun dummy

scoreboard objectives add crouch minecraft.custom:sneak_time
scoreboard objectives add ultimePoke dummy

scoreboard objectives add ticks dummy
scoreboard objectives add seconds dummy

scoreboard objectives add jumpMario custom:jump
scoreboard objectives add timeJumpMario custom:jump

scoreboard objectives add map dummy
scoreboard objectives add mode dummy
scoreboard objectives add equipe dummy
scoreboard objectives add team dummy

scoreboard objectives add equipebleue dummy
scoreboard objectives add equipejaune dummy
scoreboard objectives add equipeverte dummy
scoreboard objectives add equiperouge dummy

scoreboard objectives add finiTeam dummy

scoreboard players reset @a

bossbar remove 50
bossbar add 50 "Joueur prêt"

effect give @a health_boost 25555 19 true
effect give @a instant_health 1 20 true

kill @e[name="game",type=armor_stand]
kill @e[name="kit",type=armor_stand]
summon armor_stand 0 10 0 {CustomNameVisible:1b,CustomName:'{"text":"game"}'}
summon armor_stand -1000 98 -1000 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"kit"}'}
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s Player 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s start 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s map 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s mode 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s team 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equipebleue 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equipejaune 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equiperouge 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s equipeverte 0
execute as @e[name="kit",limit=1] at @s run scoreboard players set @s vie 3

gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doFireTick false
gamerule fallDamage false
gamerule doMobLoot false
gamerule mobGriefing false
gamerule doFireTick false


advancement grant @a until kit:root

bossbar remove 50
bossbar add 50 "Joueurs prêts"
bossbar set minecraft:50 players @a
bossbar set minecraft:50 color green

team add EquipeBleue
team add EquipeJaune
team add EquipeVerte
team add EquipeRouge
team add PasEquipe

team modify EquipeBleue friendlyFire false
team modify EquipeBleue color aqua
team modify EquipeBleue prefix {"text":"[BLEU] ","color":"aqua"}

team modify EquipeRouge friendlyFire false
team modify EquipeRouge color red
team modify EquipeRouge prefix {"text":"[ROUGE] ","color":"red"}

team modify EquipeVerte friendlyFire false
team modify EquipeVerte color dark_green
team modify EquipeVerte prefix {"text":"[VERT] ","color":"dark_green"}

team modify EquipeJaune friendlyFire false
team modify EquipeJaune color yellow
team modify EquipeJaune prefix {"text":"[JAUNE] ","color":"yellow"}

team join PasEquipe @a

