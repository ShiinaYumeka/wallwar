
data modify storage minecraft:temp temp set value {}
execute store result storage minecraft:temp temp.1 int 1 run scoreboard players get GAME time
data modify storage minecraft:temp temp.2 set value 2

execute as @a[scores={kill=1..}] run function wallwar:build/battle/effect/hp with storage minecraft:temp temp

tag @s remove battle_bone_player