
execute if function wallwar:build/court/test run return run function wallwar:build/court/setdown
execute at @s if entity @e[tag=building_court,type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_court:1b}}}},distance=1..] run return run function wallwar:build/court/setdown2
execute unless entity @s[tag=building_court] run function wallwar:build/court/setup


function wallwar:build/court/team


#execute positioned ~ ~-1 ~ unless entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] positioned ~-64 ~-100 ~-64 as @a[dx=127,dy=420,dz=127] positioned ~64 ~100 ~64 run function wallwar:build/court/unluck
execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] as @a[tag=building_court_marked] run function wallwar:build/court/one

execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] as @a[tag=building_court_marked] run function wallwar:build/court/two

execute if score @s tid matches 1.. as @a[tag=FIGHT] if score build_court tid = @s tid run function wallwar:build/court/effect
