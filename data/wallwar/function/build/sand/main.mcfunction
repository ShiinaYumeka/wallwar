
execute if function wallwar:build/sand/test run return run function wallwar:build/sand/setdown
execute if entity @e[tag=building_sand,type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_sand:1b}}}},distance=0.1..] run return run function wallwar:build/sand/setdown2
execute unless entity @s[tag=building_sand] run function wallwar:build/sand/setup

function wallwar:build/sand/team

execute positioned ~ ~-1 ~ unless entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] positioned ~-64 ~-100 ~-64 as @a[dx=127,dy=420,dz=127] positioned ~64 ~100 ~64 run function wallwar:build/sand/effect
execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] as @a run function wallwar:build/sand/effect

execute unless score lowY_Pro time matches 1.. run return fail

execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] run function wallwar:build/sand/barrier/test