
particle witch ~ ~ ~ 0.1 0.1 0.1 0.3 20 normal
playsound block.enchantment_table.use player @a ~ ~ ~

execute as @p[team=!sp,gamemode=!spectator] run tag @s add spawn_user

execute if entity @p[tag=spawn_user,team=red] run data modify entity @s Item.components.minecraft:entity_data.Team set value "red"
execute if entity @p[tag=spawn_user,team=yellow] run data modify entity @s Item.components.minecraft:entity_data.Team set value "yellow"
execute if entity @p[tag=spawn_user,team=blue] run data modify entity @s Item.components.minecraft:entity_data.Team set value "blue"
execute if entity @p[tag=spawn_user,team=green] run data modify entity @s Item.components.minecraft:entity_data.Team set value "green"

execute if entity @p[tag=spawn_user] run data remove entity @s Item.components."minecraft:custom_data"

tag @a remove spawn_user
#kill @s

