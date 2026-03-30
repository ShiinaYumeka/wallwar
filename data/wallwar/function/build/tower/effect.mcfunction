#say 1

execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_red:1b}}}}] run function wallwar:build/tower/red
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_blue:1b}}}}] run function wallwar:build/tower/blue
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_yellow:1b}}}}] run function wallwar:build/tower/yellow
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_green:1b}}}}] run function wallwar:build/tower/green
