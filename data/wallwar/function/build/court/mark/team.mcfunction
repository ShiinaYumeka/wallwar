
execute if entity @a[tag=building_court_marked] run return fail

execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_red:1b}}}}] as @a[sort=random,tag=FIGHT,limit=1,tag=!building_court_marked,team=red] run function wallwar:build/court/mark/mark
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_blue:1b}}}}] as @a[sort=random,tag=FIGHT,limit=1,tag=!building_court_marked,team=blue] run function wallwar:build/court/mark/mark
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_yellow:1b}}}}] as @a[sort=random,tag=FIGHT,limit=1,tag=!building_court_marked,team=yellow] run function wallwar:build/court/mark/mark
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_green:1b}}}}] as @a[sort=random,tag=FIGHT,limit=1,tag=!building_court_marked,team=green] run function wallwar:build/court/mark/mark

