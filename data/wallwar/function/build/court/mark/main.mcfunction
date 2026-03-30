
execute unless entity @a[tag=building_court_marked] run function wallwar:build/court/mark/give

execute positioned ^ ^ ^5 if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_team:1b}}}}] run function wallwar:build/court/mark/team
execute positioned ^ ^ ^5 unless entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_team:1b}}}}] run function wallwar:build/court/mark/random

execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] positioned ^ ^ ^5 run function wallwar:build/court/mark/random

