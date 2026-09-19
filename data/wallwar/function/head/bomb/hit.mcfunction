
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.4
particle minecraft:explosion ~ ~ ~ 0.6 0.6 0.6 0 8
scoreboard players set #bomb_z temp 0
execute positioned ~-2 ~-2 ~-2 run function wallwar:head/bomb/loop_z
kill @s
