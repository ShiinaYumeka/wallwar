
setblock ~ ~-1.5 ~3 minecraft:cyan_shulker_box{LootTable:"minecraft:gameplay/fish/chest2"}
setblock ~ ~-1.5 ~-3 minecraft:cyan_shulker_box{LootTable:"minecraft:gameplay/fish/chest2"}
execute if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] run setblock ~-3 ~-1.5 ~ minecraft:cyan_shulker_box{LootTable:"minecraft:gameplay/fish/chest2"}
execute if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] run setblock ~3 ~-1.5 ~ minecraft:cyan_shulker_box{LootTable:"minecraft:gameplay/fish/chest2"}
