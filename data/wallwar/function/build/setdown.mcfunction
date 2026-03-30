
execute if data entity @s Item run return run data modify entity @s Invisible set value 1b

data modify entity @s Invisible set value 0b
data remove entity @s Glowing
tag @s remove building_tested
tag @s remove building_player
tag @s remove building_ocean
tag @s remove building_sand
tag @s remove building_wither
tag @s remove building_respawn
tag @s remove building_trans
tag @s remove wither_craft
tag @s remove building_battle

