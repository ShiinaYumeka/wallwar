
execute if entity @s[tag=pokemon_nomain] run return fail
execute unless entity @s[tag=pokemon_throw] run function wallwar:pokemon/throw



execute store result score -y temp run data get entity @s Motion[1] 100000
execute unless score @s time matches 1.. run scoreboard players remove -y temp 20000
execute store result entity @s Motion[1] double 0.00001 run scoreboard players add -y temp 2000

particle end_rod

execute if entity @s[nbt={OnGround:1b}] run function wallwar:pokemon/use

execute if score @s time matches 1.. run scoreboard players remove @s time 1
execute if entity @s[nbt={OnGround:1b}] run tag @s add pokemon_nomain
