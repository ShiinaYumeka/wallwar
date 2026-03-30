
execute store result score #rand temp run random value 1..100
execute if score #rand temp matches 1..40 positioned ^1 ^ ^ run fill ~-3 ~ ~-3 ~3 ~ ~3 air replace stone
fill ~-3 ~ ~-3 ~3 ~ ~3 air replace stone
execute if score #rand temp matches 61..100 positioned ^-1 ^ ^ run fill ~-3 ~ ~-3 ~3 ~ ~3 air replace stone
tp @s ^ ^ ^1


scoreboard players remove #rd_const time 1
execute if score #rd_const time matches 1.. at @s run function wallwar:death_fight/mount/6
