
execute store result score #temp temp run random value 1..100
execute if score #temp temp matches 1..15 run return run tag @s add building_wither_exp

kill @s
