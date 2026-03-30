
execute if function wallwar:build/wither/test run return run function wallwar:build/wither/setdown
execute at @s if entity @e[tag=building_wither,type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_wither:1b}}}},distance=1..] run return run function wallwar:build/wither/setdown2
execute unless entity @s[tag=building_wither] run function wallwar:build/wither/setup

function wallwar:build/wither/team

execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_all:1b}}}}] run function wallwar:build/wither/user
execute positioned ~ ~-1 ~ if entity @e[type=item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{building_update_two:1b}}}}] run function wallwar:build/wither/nouse

execute positioned ^3 ^3 ^0.5 if block ~ ~ ~ shroomlight run function wallwar:build/wither/add/main
execute positioned ^-3 ^3 ^0.5 if block ~ ~ ~ shroomlight run function wallwar:build/wither/add/main
execute positioned ^3 ^-3 ^0.5 if block ~ ~ ~ shroomlight run function wallwar:build/wither/add/main
execute positioned ^-3 ^-3 ^0.5 if block ~ ~ ~ shroomlight run function wallwar:build/wither/add/main
