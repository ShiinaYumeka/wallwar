
spreadplayers ~ ~ 1 40 under 307 false @s
execute at @s if block ~ ~-1 ~ sculk run setblock ~ ~ ~ soul_lantern replace
scoreboard players remove #rd_const time 1
execute if score #rd_const time matches 1.. run function wallwar:death_fight/oldcity/lantern
