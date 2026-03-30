
execute if entity @s[tag=FIGHT,tag=!lowY,y=-64,dy=64] run effect give @s minecraft:wither 3 1

execute unless entity @a[tag=battle_iron_player] run return fail
execute if entity @s[y=-20,dy=20] run function wallwar:build/battle/effect/iron3

execute if entity @s[tag=battle_iron_player,tag=!lowY,gamemode=!spectator] run function wallwar:build/battle/effect/iron2
