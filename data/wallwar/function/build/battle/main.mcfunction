
execute if function wallwar:build/battle/test run return run function wallwar:build/battle/setdown
execute at @s if entity @e[tag=building_battle,type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{building_battle:1b}}}},distance=1..] run return run function wallwar:build/battle/setdown2

execute unless entity @s[tag=building_battle] run function wallwar:build/battle/setup

function wallwar:build/battle/team
#function wallwar:build/battle/use/main

#execute positioned ^5 ^ ^-1 run function wallwar:build/battle/use/main

scoreboard players operation #temp tid = @s tid
execute if entity @s[tag=building_battle_flint] as @a[team=!sp] run function wallwar:build/battle/effect/flint
execute if entity @s[tag=building_battle_leather] as @a[team=!sp] run function wallwar:build/battle/effect/leather
execute if entity @s[tag=building_battle_bucket] as @a[team=!sp] run function wallwar:build/battle/effect/bucket
execute if entity @s[tag=building_battle_iron] as @a[team=!sp] run function wallwar:build/battle/effect/iron
execute if entity @s[tag=building_battle_string] as @a[team=!sp] run function wallwar:build/battle/effect/string

