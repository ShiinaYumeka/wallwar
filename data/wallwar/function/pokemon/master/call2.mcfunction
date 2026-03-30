
scoreboard players reset @s time

playsound item.honey_bottle.drink player @a ~ ~ ~ 1 2

data modify entity @s Item.components."minecraft:item_name" set value {"translate":"大师球","italic": false,"color": "light_purple"}
data modify entity @s Item.components."minecraft:max_damage" set value 10b
execute store result score #temp temp run data get entity @s Item.components."minecraft:damage" 1
scoreboard players add #temp temp 1
execute store result entity @s Item.components."minecraft:damage" byte 1 run scoreboard players get #temp temp
execute if score #temp temp matches 10.. run data remove entity @s Item.components.minecraft:custom_data.pokemon_master

data modify entity @s Owner set from entity @s Thrower

data remove entity @s Item.components.minecraft:custom_data.pokemon_entity
data modify entity @s Item.components.minecraft:custom_data.pokemon_ball set value 1b


data modify entity @s Motion[0] set value 0
data modify entity @s Motion[1] set value 0
data modify entity @s Motion[2] set value 0
data modify entity @s PickupDelay set value 0



#execute at @p positioned ^ ^ ^1 run tp @s ~ ~1 ~ ~ ~
tag @s add pokemon_throw
