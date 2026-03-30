
#tellraw @a {"score": {"name": "@s","objective": "temp"}}
tag @e[tag=pokemon_target] remove pokemon_target
data remove entity @s Item.components."minecraft:custom_data".pokemon_entity
