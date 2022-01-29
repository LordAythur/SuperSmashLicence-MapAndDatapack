execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["TrouMagnetique"],Duration:50}
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run scoreboard players operation @e[tag=TrouMagnetique,limit=1,sort=nearest] player = @s player
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run kill @s

execute as @e[tag=TrouMagnetique] at @s as @e[type=!armor_stand,type=!area_effect_cloud] run playsound minecraft:entity.shulker.teleport ambient @a ~ ~ ~ 0.1 2
execute as @e[tag=TrouMagnetique,nbt={Age:1}] at @s as @e[type=!armor_stand,type=!area_effect_cloud] run particle minecraft:portal ~ ~ ~ 0 0 0 1 100 force @a
#execute as @e[tag=TrouMagnetique] at @s as @e[distance=..4,type=!armor_stand,type=!area_effect_cloud] unless score @s player = @e[tag=TrouMagnetique,limit=1,sort=nearest] player run tp @s ~ ~ ~
execute as @e[tag=TrouMagnetique] at @s as @e[distance=..4,type=!armor_stand,type=!area_effect_cloud,type=!cat] run tp @s ~ ~ ~
execute as @e[tag=TrouMagnetique,nbt={Age:49}] at @s as @a[distance=..4] unless score @s player = @e[tag=TrouMagnetique,nbt={Age:49},limit=1,sort=nearest] player run scoreboard players operation @s detect_kill = @e[tag=TrouMagnetique,nbt={Age:49},limit=1,sort=nearest] player
execute as @e[tag=TrouMagnetique,nbt={Age:49}] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:1,ignited:1b,Invulnerable:1b,ExplosionRadius:2b}
#execute as @e[type=area_effect_cloud,nbt={Duration:100}] at @s run say @s