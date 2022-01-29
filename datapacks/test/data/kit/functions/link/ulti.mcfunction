scoreboard players add @s[scores={damageCinetis=0..}] stackCinetis 1


#son en fonction du stack de cinetis (10 max)
execute as @s[scores={damageCinetis=0..,stackCinetis=1}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.1
execute as @s[scores={damageCinetis=0..,stackCinetis=2}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.2
execute as @s[scores={damageCinetis=0..,stackCinetis=3}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.3
execute as @s[scores={damageCinetis=0..,stackCinetis=4}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.4
execute as @s[scores={damageCinetis=0..,stackCinetis=5}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.5
execute as @s[scores={damageCinetis=0..,stackCinetis=6}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.6
execute as @s[scores={damageCinetis=0..,stackCinetis=7}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.7
execute as @s[scores={damageCinetis=0..,stackCinetis=8}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.8
execute as @s[scores={damageCinetis=0..,stackCinetis=9}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 1.9
execute as @s[scores={damageCinetis=0..,stackCinetis=10..}] run playsound ssl:link.tape_ult ambient @a ~ ~ ~ 1 2



scoreboard players reset @s[scores={damageCinetis=0..}] damageCinetis