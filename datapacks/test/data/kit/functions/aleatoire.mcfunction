scoreboard players reset @s
title @a times 20 100 20
title @s subtitle {"text":"est votre kit","color":"gold"}


execute as @s at @e[name="kit",limit=1,scores={aleatoire=0}] run scoreboard players set @s crewmate 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=0}] run title @s title {"text":"Crewmate","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=1}] run scoreboard players set @s Doomfist 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=1}] run title @s title {"text":"Doomfist","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=2}] run scoreboard players set @s bomberman 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=2}] run title @s title {"text":"Bomberman","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=3}] run scoreboard players set @s link 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=3}] run title @s title {"text":"Link","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=4}] run scoreboard players set @s emergency 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=4}] run title @s title {"text":"Zéphyr","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=5}] run scoreboard players set @s goku 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=5}] run title @s title {"text":"Son Goku","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=6}] run scoreboard players set @s yasuo 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=6}] run title @s title {"text":"Yasuo","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=7}] run scoreboard players set @s mario 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=7}] run title @s title {"text":"Mario","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=8}] run scoreboard players set @s pokemon 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=8}] run title @s title {"text":"Pokémon","color":"dark_red"}

execute as @s at @e[name="kit",limit=1,scores={aleatoire=9}] run scoreboard players set @s assassin 1
execute as @s at @e[name="kit",limit=1,scores={aleatoire=9}] run title @s title {"text":"Assassin","color":"dark_red"}