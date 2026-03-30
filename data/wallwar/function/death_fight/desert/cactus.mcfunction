
spreadplayers ~ ~ 1 28 false @s
execute at @s if block ~ ~-1 ~ sand run fill ~ ~ ~ ~ ~1 ~ cactus replace
scoreboard players remove #rd_const time 1
execute if score #rd_const time matches 1.. run function wallwar:death_fight/desert/cactus
