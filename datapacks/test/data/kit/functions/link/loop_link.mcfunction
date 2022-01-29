###########################     Coup spécial    ####################################

clear @s[scores={coup_special=1}] minecraft:warped_fungus_on_a_stick

scoreboard players set @s[scores={coup_special=1}] coup_special 1000
execute as @s[scores={coup_special=1000}] at @s as @a[distance=..5,limit=2,sort=nearest] unless score @s player = @p player run scoreboard players set @p[scores={coup_special=1000,link=1}] coup_special 1



execute as @s[scores={coup_special=1}] at @s run effect give @a[distance=..5] resistance 8 100 true



execute as @s[scores={coup_special=1}] at @s as @a[distance=..5] unless score @s player = @p player at @s run scoreboard players set @s stun 200
execute as @s[scores={coup_special=1}] at @s as @a[distance=..5] unless score @s player = @p player run scoreboard players operation @s StunCinetis = @p player

#son et déconte
execute as @s[scores={coup_special=1}] at @s run playsound ssl:link.set_ult ambient @a


execute as @s[scores={coup_special=20}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~

execute as @s[scores={coup_special=40}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~

execute as @s[scores={coup_special=60}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=70}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=80}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=90}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~


execute as @s[scores={coup_special=95}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=100}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=105}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=110}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=115}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=120}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~


execute as @s[scores={coup_special=122}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=124}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=126}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=128}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=130}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=132}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=134}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=136}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~
execute as @s[scores={coup_special=138}] at @s run playsound ssl:link.timer_ult ambient @a ~ ~ ~



execute as @s[scores={coup_special=140}] at @s run playsound ssl:link.fin_ult ambient @a ~ ~ ~
#fin son 


#explosion
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=1..2}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:1b}


execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=3..4}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:2b}


execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=5..6}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:3b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=5..6}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:3b}

execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=7..9}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:4b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=7..9}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:4b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=7..9}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:4b}


execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=10..14}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:4b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=10..14}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:4b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=10..14}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:4b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=10..14}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:4b}


execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=15..}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:5b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=15..}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:3b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=15..}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:3b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=15..}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:3b}
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player at @s if entity @s[scores={stackCinetis=15..}] facing entity @p[scores={coup_special=140,link=1}] eyes run summon creeper ^ ^ ^1 {Invulnerable:1b,Fuse:1,ignited:1b,ExplosionRadius:3b}


execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player run effect clear @s resistance
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player run scoreboard players set @s stun 1
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player run scoreboard players operation @s detect_kill = @s StunCinetis
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player run scoreboard players reset @s stackCinetis
execute as @s[scores={coup_special=140}] at @s as @a[scores={StunCinetis=0..}] if score @s StunCinetis = @p player run scoreboard players reset @s StunCinetis






item replace entity @s[scores={coup_special=140}] armor.head with minecraft:golden_helmet{CustomModelData:3,Enchantments:[{id:"minecraft:blast_protection",lvl:20s}]} 1
item replace entity @s[scores={coup_special=155}] armor.head with air 1




scoreboard players reset @s[scores={coup_special=155}] coup_special
scoreboard players reset @s[scores={coup_special=1001}] coup_special

scoreboard players add @s[scores={coup_special=1..}] coup_special 1


###########################     Compétence 1    ####################################

execute as @s[scores={useArc=1}] at @s run scoreboard players add @s competence1 1
clear @s[scores={competence1=1}] minecraft:bow

scoreboard players set @s[scores={competence1=1}] rechargement1 200

execute as @s[scores={competence1=1}] at @s run scoreboard players operation @e[type=spectral_arrow,sort=nearest,limit=1] player = @s player
execute as @s[scores={competence1=1}] at @s run tag @e[type=spectral_arrow,sort=nearest,limit=1] add Projectile





item replace entity @s[scores={competence1=1..,rechargement1=0}] container.1 with bow{CustomModelData:1,display:{Name:'{"text":"Arc Magnétique"}'},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]} 1

scoreboard players reset @s[scores={competence1=1}] useArc
scoreboard players reset @s[scores={competence1=1..,rechargement1=0}] competence1

scoreboard players add @s[scores={competence1=1..}] competence1 1


###########################     Compétence 2    ####################################

execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Grappin"]}}},scores={competences=1}] at @s run scoreboard players add @s competence2 1
clear @s[scores={competence2=1}] minecraft:carrot_on_a_stick{Tags:["Grappin"]} 1

scoreboard players set @s[scores={competence2=1}] rechargement2 300


execute as @s[scores={competence2=1}] at @s run playsound ssl:link.lancer_grappin ambient @a

execute as @s[scores={competence2=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["GrappinDebut"],Duration:1000}
execute as @s[scores={competence2=1}] at @s rotated as @s run scoreboard players operation @e[limit=1,sort=nearest,tag=GrappinDebut] player = @s player
execute as @s[scores={competence2=1}] at @s rotated as @s run tp @e[limit=1,sort=nearest,tag=GrappinDebut] ~ ~ ~ ~ ~


execute as @s[scores={competence2=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Grappin","Projectile"],Duration:1000}
execute as @s[scores={competence2=1}] at @s rotated as @s run scoreboard players operation @e[limit=1,sort=nearest,tag=Grappin] player = @s player
execute as @s[scores={competence2=1}] at @s rotated as @s run tp @e[limit=1,sort=nearest,tag=Grappin] ~ ~ ~ ~ ~

effect give @s[scores={competence2=1}] slow_falling 5 1 true

#tp constante du joueur
execute as @s[scores={competence2=1..30}] at @s as @e[tag=GrappinDebut] if score @s player = @p player at @s as @a if score @e[tag=GrappinDebut,limit=1,sort=nearest] player = @s player run tp @s ~ ~ ~ ~ ~




#1ere phase tp du grappin
#execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run playsound minecraft:block.tripwire.click_on ambient @p ~ ~ ~ 1 1.5
execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run playsound ssl:link.grappin ambient @a ~ ~ ~ 1 1.5

execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run tp @s ^ ^ ^0.5 ~ ~
execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0 20 force
#execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run tp @s ~ ~2 ~ ~ ~
execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run scoreboard players set @s competence2 30

execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run tp @s ^ ^ ^0.5 ~ ~
execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0 20 force
#execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run tp @s ~ ~2 ~ ~ ~
execute as @s[scores={competence2=1..29}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run scoreboard players set @s competence2 30


#vérifie si c'est bien ou pas
execute as @s[scores={competence2=30}] at @s as @e[tag=Grappin] if score @s player = @p player at @s if block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run scoreboard players set @s competence2 60
execute as @s[scores={competence2=30}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @e[tag=GrappinDebut] if score @s player = @e[tag=GrappinDebut,limit=1,sort=nearest] player at @s as @e[tag=Grappin] if score @s player = @e[tag=GrappinDebut,limit=1,sort=nearest] player run tp @s ~ ~ ~ ~ ~


#2 eme phase tp vers le block / joueur
execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run playsound ssl:link.grappin ambient @a ~ ~ ~ 1 2

execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run tp @s ^ ^ ^0.5 ~ ~
execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run tp @s ~ ~ ~ ~ ~
execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run tp @s ~ ~2 ~ ~ ~
execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run scoreboard players set @s competence2 60

execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s run tp @s ^ ^ ^0.5 ~ ~
execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run tp @s ~ ~ ~ ~ ~
execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run tp @s ~ ~2 ~ ~ ~
execute as @s[scores={competence2=30..59}] at @s as @e[tag=Grappin] if score @s player = @p player at @s unless block ~ ~1 ~ air as @a if score @e[tag=Grappin,limit=1,sort=nearest] player = @s player run scoreboard players set @s competence2 60






effect clear @s[scores={competence2=60}] slow_falling
execute as @s[scores={competence2=60}] at @s as @e[tag=Grappin] if score @s player = @p player run kill @s
execute as @s[scores={competence2=60}] at @s as @e[tag=GrappinDebut] if score @s player = @p player run kill @s







item replace entity @s[scores={competence2=1..,rechargement2=0}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:7,display:{Lore:['[{"text":"Grappin"}]'],Name:'[{"text":"Grappin"}]'},Tags:["Grappin"]} 1

scoreboard players reset @s[scores={competence2=1}] competences
scoreboard players reset @s[scores={competence2=1..,rechargement2=0}] competence2

scoreboard players add @s[scores={competence2=1..}] competence2 1

###########################     Compétence 3    ####################################

execute as @s[scores={usePotion=1}] at @s run scoreboard players add @s competence3 1
clear @s[scores={competence3=1}] minecraft:potion

execute as @s[scores={competence3=5}] at @s run playsound ssl:link.potion ambient @a ~ ~ ~

scoreboard players set @s[scores={competence3=1}] rechargement3 300



scoreboard players reset @s[scores={competence3=1}] usePotion
scoreboard players add @s[scores={competence3=1..}] competence3 1

item replace entity @s[scores={competence3=1..,rechargement3=0}] container.3 with potion{display:{Name:'{"text":"Potion"}'},HideFlags:99,CustomPotionEffects:[{Id:1b,Amplifier:1b,Duration:100},{Id:5b,Amplifier:0b,Duration:100},{Id:22b,Amplifier:2b,Duration:200}],CustomPotionColor:16711680} 1
scoreboard players reset @s[scores={competence3=1..,rechargement3=0}] competence3






############################        Passif         #######################################

item replace entity @s inventory.0 with spectral_arrow{display:{Name:'{"text":"Flèche de lumière"}'}} 1