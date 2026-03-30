
execute store result score #rand temp run random value 1..100
fill ~ ~ ~ ~20 ~ ~ water replace sand
execute if score #rand temp matches 1..15 run tp @s ^1 ^ ^
execute if score #rand temp matches 16..65 run tp @s ^0.5 ^ ^
execute at @s run tp ^ ^ ^1

scoreboard players remove #rd_const time 1
execute if score #rd_const time matches 1.. at @s run function wallwar:death_fight/beach/2
