

effect give @s resistance 1 4 true
effect give @a[distance=..10] weakness 10 0 true
effect give @a[distance=0.1..10] blindness 10 0 true


execute at @s run playsound minecraft:entity.zoglin.death player @a ~ ~ ~ 1 1.5
execute at @s run particle ash ~ ~1 ~ 0 0 0 1 100 force
tag @s remove battle_flesh_player