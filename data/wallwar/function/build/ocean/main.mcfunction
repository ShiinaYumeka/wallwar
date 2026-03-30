
execute if function wallwar:build/ocean/test run return run function wallwar:build/ocean/setdown
execute at @s if entity @e[tag=building_ocean,type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_ocean:1b}}}},distance=1..] run return run function wallwar:build/ocean/setdown2
execute unless entity @s[tag=building_ocean] run function wallwar:build/ocean/setup


function wallwar:build/ocean/team

execute positioned ~ ~-1 ~ unless entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] run weather rain
execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] run weather thunder

#execute positioned ~ ~-1 ~ unless entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] positioned ~-64 ~-100 ~-64 as @a[dx=127,dy=420,dz=127] positioned ~64 ~100 ~64 run function wallwar:build/ocean/unluck
execute positioned ~ ~-1 ~ as @a run function wallwar:build/ocean/unluck

execute positioned ~ ~-1 ~ unless entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] run return fail

execute positioned ~ ~-1 ~ unless entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] positioned ~-64 ~-100 ~-64 as @a[dx=127,dy=420,dz=127] positioned ~64 ~100 ~64 run function wallwar:build/ocean/luck
execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] as @a run function wallwar:build/ocean/luck


execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] unless entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] positioned ~-64 ~-100 ~-64 as @a[team=!sp,gamemode=!spectator,dx=127,dy=420,dz=127] positioned ~64 ~100 ~64 run function wallwar:build/ocean/blind

execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] as @a[team=!sp,gamemode=!spectator] run function wallwar:build/ocean/blind

