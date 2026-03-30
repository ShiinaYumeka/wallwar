
scoreboard players add #sid sid 1
scoreboard players operation @s sid = #sid sid

item replace entity 0-0-0-0-1 container.0 with carrot_on_a_stick[custom_data={sid:0,pokemon_master_call:1b,wallwar_item:1b},item_name={"translate":"大师球-召回","italic": false,"color": "light_purple"},max_damage=10,attribute_modifiers=[{"id": "no_put","type": "block_interaction_range","amount": -10,"operation": "add_value","slot": "hand"}]]

execute store result entity 0-0-0-0-1 item.components."minecraft:custom_data".sid int 1 run scoreboard players get #sid sid
data modify entity 0-0-0-0-1 item.components."minecraft:damage" set from entity @s Item.components."minecraft:damage"
data modify entity 0-0-0-0-1 item.components."minecraft:lore" set from entity @s Item.components."minecraft:lore"

execute if data entity @s Item.components."minecraft:custom_data".pokemon_entity at @s as @p[gamemode=!spectator,scores={egg_user=1..}] run item replace entity @s weapon.mainhand from entity 0-0-0-0-1 container.0
scoreboard players reset @a egg_user