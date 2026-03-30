
spreadplayers ~ ~ 1 20 false @s
execute at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ poppy replace
scoreboard players remove #rd_const time 1
execute if score #rd_const time matches 1.. run function wallwar:death_fight/plain/flower
