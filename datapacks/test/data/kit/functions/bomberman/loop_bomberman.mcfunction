execute as @a[scores={bomberman=1}] at @s run kill @e[type=snowball]



###########################     Compétence 1    ####################################

    ###########################     Utilisé    ############################

kill @e[scores={timeBomb=60..}]

execute as @a[scores={snowball=1,bomberman=1}] at @s run scoreboard players add @s competence1 1

effect give @e[name="bombtp"] invisibility 10 1 true
effect give @e[name="bombtp"] slowness 100 100 true

execute as @a[scores={snowball=1..,bomberman=1, competence1=1..}] at @s run summon cat ~ ~ ~ {Tags:["Projectile"],Invulnerable:1b,CustomName:'{"text":"bombtp"}',Silent:1b}
execute as @a[scores={snowball=1..,bomberman=1, competence1=1..,coup_special=1..}] at @s run summon cat ~ ~1 ~ {Invulnerable:1b,CustomName:'{"text":"bombtp"}',Silent:1b}
execute as @a[scores={snowball=1..,bomberman=1, competence1=1..}] at @s run summon armor_stand ~ ~-1.5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:tnt",Properties:{unstable:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b,Tags:["bombfalling"]}],CustomName:'{"text":"bomb"}'}
execute as @a[scores={competence1=1..,snowball=1..,bomberman=1}] at @s run scoreboard players operation @e[type=minecraft:cat,limit=1,sort=nearest,name="bombtp"] player = @s player
execute as @a[scores={competence1=1..,snowball=1..,bomberman=1}] at @s positioned ~ ~-1.5 ~ run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,name="bomb"] player = @s player
execute as @a[scores={competence1=1..,snowball=1..,bomberman=1}] at @s positioned ~ ~ ~ run scoreboard players operation @e[type=minecraft:falling_block,limit=1,sort=nearest] player = @s player

execute as @e[name="bomb"] at @s run scoreboard players set @s instantBoom 1
execute as @e[name="bombtp"] at @s run tp @e[name="bomb",sort=nearest,limit=1] ~ ~-1.5 ~
scoreboard players reset @a[scores={snowball=1..,competence1=1..,bomberman=1}] snowball

execute as @e[name="bomb"] at @s run scoreboard players add @s timeBomb 1
execute as @e[name="bombtp"] at @s run scoreboard players add @s timeBomb 1
execute as @e[type=falling_block,tag=bombfalling] at @s run scoreboard players add @s timeBomb 1

execute as @a[scores={bomberman=1,coup_special=1..}] at @s run execute as @e[type=falling_block,scores={timeBomb=60..}] at @s run summon creeper ~ ~2 ~ {Fuse:0,ignited:1b,Invulnerable:1b}
execute as @e[name="bombtp",scores={timeBomb=60..}] at @s run summon creeper ~ ~0.5 ~ {Fuse:0,ignited:1b,Invulnerable:1b}
execute as @e[name="bomb",scores={timeBomb=60..}] at @s run kill @e[type=falling_block,limit=1,sort=nearest,distance=..2]
execute as @e[name="bomb",scores={timeBomb=60..}] at @s run kill @e[limit=1,sort=nearest,name="bombtp",scores={timeBomb=60..}]
execute as @e[name="bomb",scores={timeBomb=60..}] at @s run kill @e[type=armor_stand,limit=1,sort=nearest,name="bomb"]

execute as @a at @s run execute as @e[name="bomb",distance=..3,scores={timeBomb=20..,instantBoom=1}] unless score @s player = @p player at @s run kill @e[type=falling_block,limit=1,sort=nearest]
execute as @a at @s run execute as @e[name="bomb",distance=..3,scores={timeBomb=20..,instantBoom=1}] unless score @s player = @p player at @s run summon creeper ~ ~2 ~ {Fuse:0,ignited:1b,Invulnerable:1b}
execute as @a at @s run execute as @e[name="bomb",distance=..3,scores={timeBomb=20..,instantBoom=1}] unless score @s player = @p player at @s run kill @e[limit=1,sort=nearest,name="bombtp"]
execute as @a at @s run execute as @e[name="bomb",distance=..3,scores={timeBomb=20..,instantBoom=1}] unless score @s player = @p player at @s run kill @e[type=armor_stand,limit=1,sort=nearest,name="bomb"]

execute as @a[scores={competence1=1..,bomberman=1}] at @s run scoreboard players add @s snowballcount 1
execute as @a[scores={snowballcount=100,bomberman=1}] at @s run scoreboard players remove @s competence1 1
execute as @a[scores={snowballcount=100,bomberman=1}] at @s run give @s snowball{CustomModelData:1,display:{Lore:['[{"text":"Bombe"}]'],Name:'[{"text":"Bombe"}]'}}
execute as @a[scores={snowballcount=100,bomberman=1}] at @s run scoreboard players set @s snowballcount 0

execute as @a[scores={coup_special=1..,bomberman=1}] at @s run item replace entity @s hotbar.1 with snowball{CustomModelData:1,display:{Lore:['[{"text":"Bombe"}]'],Name:'[{"text":"Bombe"}]'}} 3
execute as @a[scores={coup_special=1,bomberman=1}] at @s run execute as @e[name="bomb",distance=..3] at @e[name="bomb",distance=..3] run scoreboard players set @s instantBoom 1

###########################     Compétence 2    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Kick"]}}},scores={competences=1..,bomberman=1}] at @s run scoreboard players set @s competence2 1
clear @a[scores={competences=1..,competence2=1,bomberman=1}] minecraft:carrot_on_a_stick{Tags:["Kick"]} 1

scoreboard players reset @a[scores={competences=1..,competence2=1,bomberman=1}] competences

execute as @a[scores={competence2=1,bomberman=1}] at @s run execute as @e[name="bomb",distance=..3] at @e[name="bomb",distance=..3] run scoreboard players set @s timeBomb 0
execute as @a[scores={competence2=1,bomberman=1}] at @s run execute as @e[name="bombtp",distance=..3] at @e[name="bomb",distance=..3] run scoreboard players set @s timeBomb 0
execute as @a[scores={competence2=1,bomberman=1}] at @s run execute as @e[type=falling_block,distance=..3] at @e[name="bomb",distance=..3] run scoreboard players set @s timeBomb 0
execute as @a[scores={competence2=1,bomberman=1}] at @s run execute as @e[name="bomb",distance=..3] at @e[name="bomb",distance=..3] run scoreboard players set @s instantBoom 1

execute as @a[scores={competence2=1,bomberman=1}] at @s run execute as @e[name="bombtp",distance=..3,limit=1] at @s rotated as @p run function kit:bomberman/competence2
#execute as @a[scores={competence2=1..18,bomberman=1}] at @s run tp @s ~ ~ ~ ~20 ~
execute as @a[scores={competence2=6,bomberman=1}] at @s run execute as @e[name="bombtp",distance=..3,limit=1] at @s rotated as @p run function kit:bomberman/competence2
execute as @a[scores={competence2=11,bomberman=1}] at @s run execute as @e[name="bombtp",distance=..3,limit=1] at @s rotated as @p run function kit:bomberman/competence2



scoreboard players set @a[scores={competence2=1,bomberman=1}] rechargement2 100

item replace entity @a[scores={competence2=1..,rechargement2=0,bomberman=1}] container.2 with minecraft:carrot_on_a_stick{CustomModelData:6,display:{Lore:['[{"text":"Kick"}]'],Name:'[{"text":"Kick"}]'},Tags:["Kick"]} 1

scoreboard players reset @a[scores={competence2=1..,rechargement2=0,bomberman=1}] competence2

scoreboard players add @a[scores={competence2=1..,bomberman=1}] competence2 1

#execute as @a at @s anchored eyes facing entity @e[sort=nearest,limit=1,distance=..3] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.3] run effect give @e[distance=..3,sort=nearest,limit=1] glowing 1 10 true

###########################     Compétence 3    ####################################

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["Bomberman Fly"]}}},scores={competences=1,bomberman=1}] at @s run scoreboard players add @s competence3 1
clear @a[scores={competences=1..,competence3=1,bomberman=1}] minecraft:carrot_on_a_stick{Tags:["Bomberman Fly"]} 1

execute as @a[scores={competences=1..,bomberman=1, competence3=1}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:40,CustomName:'{"text":"bombermanfly"}',FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680],FadeColors:[I;16777215]}]}}}}
scoreboard players set @a[scores={competences=1..,bomberman=1, competence3=1}] competence3 2
execute as @a[scores={bomberman=1,competence3=40}] at @s run effect give @s resistance 1 255 true
execute as @e[type=firework_rocket,name="bombermanfly"] at @s run tp @p[scores={bomberman=1, competence3=1..}] ~ ~ ~ 
execute as @e[type=firework_rocket,name="bombermanfly"] at @s run effect give @p[scores={bomberman=1, competence3=1..}] slow_falling 5 0 true

scoreboard players set @a[scores={competence3=2,bomberman=1}] rechargement3 300


item replace entity @a[scores={competence3=1..,rechargement3=0,bomberman=1}] container.3 with minecraft:carrot_on_a_stick{CustomModelData:8,display:{Lore:['[{"text":"Bomberman Fly"}]'],Name:'[{"text":"Bomberman Fly"}]'},Tags:["Bomberman Fly"]} 1

scoreboard players reset @a[scores={competences=1..,competence3=1..,bomberman=1}] competences
scoreboard players reset @a[scores={competence3=1..,rechargement3=0,bomberman=1}] competence3

scoreboard players add @a[scores={competence3=1..,bomberman=1}] competence3 1

#augmenter temps pour tp le gars apes l explosion, faire cooldown + particle

###########################     Coup spécial    ####################################

clear @a[scores={coup_special=1,bomberman=1}] minecraft:warped_fungus_on_a_stick

#execute as @a[scores={bomberman=1, coup_special=..60}] at @s run tp @a[scores={bomberman=1, coup_special=1..}] ~ ~1 ~
execute as @a[scores={bomberman=1, coup_special=1}] at @s run item replace entity @s armor.chest with elytra
execute as @a[scores={bomberman=1, coup_special=1..}] at @s run item replace entity @s weapon.offhand with firework_rocket{Fireworks:{Flight:1b}} 1
execute as @a[scores={bomberman=1, coup_special=1..}] at @s run scoreboard players add @s snowball 1

#execute as @a[scores={bomberman=1, coup_special=80..}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:5,CustomName:'{"text":"bombermanflyUlt"}',FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680],FadeColors:[I;16777215]}]}}}}
#execute as @e[type=firework_rocket,name="bombermanflyUlt"] at @s run effect give @p[scores={bomberman=1, coup_special=1..}] slow_falling 1 0 true
execute as @e[type=firework_rocket,name="bombermanflyUlt"] at @s run effect give @p[scores={bomberman=1, coup_special=1..}] speed 1 2 true
execute as @a[scores={bomberman=1, coup_special=1..}] at @s run effect give @p[scores={bomberman=1, coup_special=1..}] resistance 1 255 true


execute as @a[scores={bomberman=1, coup_special=1..}] at @s run scoreboard players add @s coup_special 1

execute as @a[scores={coup_special=401..,bomberman=1}] at @s run scoreboard players set @s competence1 0
execute as @a[scores={coup_special=401..,bomberman=1}] at @s run scoreboard players set @s snowball 0
execute as @a[scores={coup_special=401..,bomberman=1}] at @s run scoreboard players set @s snowballcount 0
execute as @a[scores={coup_special=401..,bomberman=1}] at @s run item replace entity @s hotbar.1 with snowball{CustomModelData:1} 3
execute as @a[scores={coup_special=401..,bomberman=1}] at @s run clear @s minecraft:firework_rocket
execute as @a[scores={coup_special=401..,bomberman=1}] at @s run clear @s minecraft:elytra
execute as @a[scores={coup_special=401..,bomberman=1}] at @s run effect give @s slow_falling 5 2 true
execute as @a[scores={coup_special=601..,bomberman=1}] at @s run execute as @e[name="bomb"] if score @e[name="bomb",sort=nearest,limit=1] player = @a[scores={coup_special=601..,bomberman=1},limit=1] player at @s run kill @s
execute as @a[scores={coup_special=601..,bomberman=1}] at @s run execute as @e[name="bombtp"] if score @e[name="bombtp",sort=nearest,limit=1] player = @a[scores={coup_special=601..,bomberman=1},limit=1] player at @s run kill @s
execute as @a[scores={coup_special=601..,bomberman=1}] at @s run execute as @e[type=falling_block] if score @e[type=falling_block,sort=nearest,limit=1] player = @a[scores={coup_special=601..,bomberman=1},limit=1] player at @s run kill @s
execute as @a[scores={coup_special=601..,bomberman=1}] at @s run scoreboard players reset @s coup_special


scoreboard players add @a[scores={coup_special=1..,bomberman=1}] coup_special 1

