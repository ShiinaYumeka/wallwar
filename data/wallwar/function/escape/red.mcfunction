
execute if entity @s[team=red] run return fail
execute if score #BOSS_MODE time matches 1 if entity @s[team=blue] run return fail
execute unless score @s escape_timer matches 1.. run return run function wallwar:escape/kill

tag @s add escape_warned
tellraw @a [{"translate":"[警告]: ","color":"white"},{"selector": "@s"},{"translate": "进入了红队领地！！！！","color":"white"}]
tellraw @a [{"translate":"[警告]: ","color":"white"},{"selector": "@s"},{"translate": "进入了红队领地！！！！","color":"white"}]
tellraw @a [{"translate":"[警告]: ","color":"white"},{"selector": "@s"},{"translate": "进入了红队领地！！！！","color":"white"}]

title @s title {"translate": "劫营速战！"}
title @s subtitle {"translate": "死亡后将给红队提供一个头颅"}
tag @s add escape_red
execute if score #BOSS_MODE time matches 1 run tag @s add escape_blue

effect give @s[nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] glowing 20 1 true