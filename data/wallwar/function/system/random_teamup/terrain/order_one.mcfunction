execute as @r[tag=ww_captain,tag=!ww_ranked] run function wallwar:system/random_teamup/terrain/rank
scoreboard players add #ww_index temp 1
execute if score #ww_index temp matches ..4 run function wallwar:system/random_teamup/terrain/order_one
