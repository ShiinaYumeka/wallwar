
execute if score #electric_glow temp matches 1 run return fail
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_red:1b}}}}] if entity @s[team=red] run return fail
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_blue:1b}}}}] if entity @s[team=blue] run return fail
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_yellow:1b}}}}] if entity @s[team=yellow] run return fail
execute if entity @e[type=item_frame,distance=..2.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_green:1b}}}}] if entity @s[team=green] run return fail



execute if entity @s[predicate=electric] run function wallwar:build/electric/effect2
effect give @s[predicate=!electric] wind_charged 31 0
#effect give @s[nbt=!{active_effects:[{id:"minecraft:wind_charged"}]}] slowness 3 0 true
title @s actionbar [{"translate": "你已被特斯拉电塔锁定，请迅速离开！"}]

scoreboard players set #electric_glow temp 1
