
execute if entity @s[tag=pokemon_nomain] run return fail
execute unless entity @s[tag=pokemon_throw] run function wallwar:pokemon/throw



execute store result score -y temp run data get entity @s Motion[1] 100000
execute store result entity @s Motion[1] double 0.00001 run scoreboard players add -y temp 2000

particle end_rod

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=!player,type=!item,type=!falling_block,type=!#arrows,dx=0,dy=0,dz=0] run function wallwar:pokemon/catch

scoreboard players remove @s time 1
execute unless score @s time matches 1.. run tag @s add pokemon_nomain
