execute as @a[tag=ww_participant,tag=ww_seed] run tag @s add ww_captain
scoreboard players set #ww_count temp 0
execute as @a[tag=ww_captain] run scoreboard players add #ww_count temp 1
execute if score #ww_count temp matches 5.. run return run function wallwar:system/random_teamup/terrain/cancel
execute if score #ww_count temp matches ..3 run function wallwar:system/random_teamup/terrain/fill_captains
