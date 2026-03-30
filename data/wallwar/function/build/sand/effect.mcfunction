
execute unless score @s tid = build_sand tid run return fail

#execute at @s if entity @s[team=red] if entity @a[distance=0.1..8,team=!red] run return fail
#execute at @s if entity @s[team=blue] if entity @a[distance=0.1..8,team=!blue] run return fail
#execute at @s if entity @s[team=yellow] if entity @a[distance=0.1..8,team=!yellow] run return fail
#execute at @s if entity @s[team=green] if entity @a[distance=0.1..8,team=!green] run return fail

execute unless entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] run effect give @s haste 11 0 false
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] run effect give @s haste 11 1 false

execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] run effect give @s minecraft:regeneration 3 0

execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_one:1b}}}}] run effect give @s minecraft:hunger 5 0