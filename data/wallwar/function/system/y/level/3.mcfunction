

execute if entity @s[tag=FIGHT,tag=!lowY,y=-64,dy=64] run effect give @s minecraft:wither 3 1
execute if entity @s[tag=FIGHT,tag=!lowY,y=0,dy=30] run effect give @s minecraft:wither 3 0

execute unless entity @a[tag=battle_iron_player] run return fail
#execute if entity @s[y=10,dy=20] run function wallwar:build/battle/effect/iron3

execute if entity @s[tag=battle_iron_player,tag=!lowY,gamemode=!spectator] run function wallwar:build/battle/effect/iron2
