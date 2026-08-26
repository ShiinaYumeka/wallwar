
execute store result score #count hunter_temp run data get entity @s Item.count
scoreboard players remove #count hunter_temp 1
execute if score #count hunter_temp matches 1.. store result entity @s Item.count int 1 run scoreboard players get #count hunter_temp
execute unless score #count hunter_temp matches 1.. run kill @s
