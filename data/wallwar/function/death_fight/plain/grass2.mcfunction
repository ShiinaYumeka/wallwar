
spreadplayers ~ ~ 1 20 false @s
execute at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ tall_grass[half=lower] replace
execute at @s if block ~ ~-1 ~ grass_block run setblock ~ ~1 ~ tall_grass[half=upper] replace
scoreboard players remove #rd_const time 1
execute if score #rd_const time matches 1.. run function wallwar:death_fight/plain/grass2
