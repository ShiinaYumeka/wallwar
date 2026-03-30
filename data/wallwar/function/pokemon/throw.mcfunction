
playsound item.honey_bottle.drink player @a ~ ~ ~ 1 2

execute if data entity @s Item.components.minecraft:custom_data.pokemon_master at @s run function wallwar:pokemon/master/throw

data modify entity @s Owner set from entity @s Thrower
#scoreboard players set #temp temp 0

#execute at @s as @p[gamemode=!spectator] if entity @s[team=blue] run scoreboard players set #temp temp 1
#execute at @s as @p[gamemode=!spectator] if entity @s[team=green] run scoreboard players set #temp temp 2
#execute at @s as @p[gamemode=!spectator] if entity @s[team=yellow] run scoreboard players set #temp temp 3
#execute at @s as @p[gamemode=!spectator] if entity @s[team=red] run scoreboard players set #temp temp 4

scoreboard players operation @s tid = @p[gamemode=!spectator] tid

execute store result entity @s Motion[0] double 0.00001 run data get entity @s Motion[0] 250000
execute store result entity @s Motion[1] double 0.00001 run data get entity @s Motion[1] 150000
execute store result entity @s Motion[2] double 0.00001 run data get entity @s Motion[2] 250000

#execute at @p positioned ^ ^ ^1 run tp @s ~ ~1 ~ ~ ~
tag @s add pokemon_throw

scoreboard players set @s time 100

