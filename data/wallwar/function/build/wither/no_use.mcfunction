
scoreboard players remove #wither_no_use2 time 1
execute if score #wither_no_use2 time matches 1 run tellraw @a {"translate": "你感到莫名的压力消失了，经验封锁已解除"}

execute as @e[type=experience_orb,tag=!building_wither_exp] run function wallwar:build/wither/no_use2

