
scoreboard players set @s tid 0
execute if data entity @s Item.components."minecraft:custom_data".building_update_blue run scoreboard players set @s tid 1
execute if data entity @s Item.components."minecraft:custom_data".building_update_green run scoreboard players set @s tid 2
execute if data entity @s Item.components."minecraft:custom_data".building_update_yellow run scoreboard players set @s tid 3
execute if data entity @s Item.components."minecraft:custom_data".building_update_red run scoreboard players set @s tid 4
execute if data entity @s Item.components."minecraft:custom_data".building_update_wither run scoreboard players set @s tid 66
