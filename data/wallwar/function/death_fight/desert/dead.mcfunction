
spreadplayers ~ ~ 1 30 false @s
execute at @s if block ~ ~-1 ~ sand run setblock ~ ~ ~ dead_bush replace
scoreboard players remove #rd_const time 1
execute if score #rd_const time matches 1.. run function wallwar:death_fight/desert/dead
