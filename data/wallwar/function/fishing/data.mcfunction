
execute store result score #temp temp run data get entity @s Motion[1] 150

execute store result entity @s Motion[2] double 1 run data get entity @s Motion[2] 1.5
execute store result entity @s Motion[1] double 0.01 run scoreboard players add #temp temp 10
execute store result entity @s Motion[0] double 1 run data get entity @s Motion[0] 1.5