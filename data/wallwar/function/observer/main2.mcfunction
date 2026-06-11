

execute as @p[tag=observer_target_temp] run function wallwar:observer/pos

data modify entity @s Item.id set value "minecraft:compass"
data modify entity @s Item.components."minecraft:lodestone_tracker" set value {target:{pos:[0,0,0],dimension:"minecraft:overworld"},tracked:false}
execute store result entity @s Item.components.minecraft:lodestone_tracker.target.pos[0] int 1 run scoreboard players get #x temp
execute store result entity @s Item.components.minecraft:lodestone_tracker.target.pos[1] int 1 run scoreboard players get #y temp
execute store result entity @s Item.components.minecraft:lodestone_tracker.target.pos[2] int 1 run scoreboard players get #z temp
data remove entity @s Item.components."minecraft:lore"
data remove entity @s Item.components."minecraft:item_name"
data remove entity @s Item.components."minecraft:custom_data"
