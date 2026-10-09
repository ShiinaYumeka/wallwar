tag @a remove ww_turn
execute as @a[tag=ww_captain] if score @s ww_order = #ww_pick time run tag @s add ww_turn
scoreboard players set @a[tag=ww_turn] ww_terrain 0
scoreboard players enable @a[tag=ww_turn] ww_terrain
tellraw @a [{selector:"@a[tag=ww_turn]"},{text:" 正在选择地形。",color:"aqua"}]
execute as @a[tag=ww_turn] run function wallwar:system/random_teamup/terrain/menu
