
#say good

#tellraw @a {"score": {"name": "@s","objective": "tid"}}
#execute if score @s tid matches 1 run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "blue"
#execute if score @s tid matches 2 run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "green"
#execute if score @s tid matches 3 run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "yellow"
#execute if score @s tid matches 4 run data modify entity @s Item.components."minecraft:custom_data".pokemon_entity.team set value "red"

execute store result entity @s Item.components."minecraft:custom_data".pokemon_entity.team byte 1 run scoreboard players get @s tid
