
attribute @s max_health modifier remove building_battle

execute if score GAME_PRO time matches 2 unless entity @s[y=-20,dy=20] run return fail
execute if score GAME_PRO time matches 3.. unless entity @s[y=10,dy=20] run return fail
attribute @s max_health modifier add building_battle -0.4 add_multiplied_base
effect clear @s wither
effect give @s glowing 3 0 true
