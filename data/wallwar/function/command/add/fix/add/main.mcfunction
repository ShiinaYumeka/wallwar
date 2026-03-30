
data modify storage minecraft:temp temp.temp set from storage minecraft:temp temp.enchList
#剔除已满级附魔
execute if data storage minecraft:temp temp.temp[0] run function wallwar:command/add/fix/add/find


#属性均满级时返回无效
execute unless data storage minecraft:temp temp.ench[0] run return run tellraw @s [{"translate": "此物品的副属性强化已经达到满级","color": "red"}]

#最大编号获取
execute store result score #count temp run data get storage minecraft:temp temp.ench
scoreboard players remove #count temp 1
execute store result storage minecraft:temp temp.length.num int 1 run scoreboard players get #count temp

#获取随机编号
function wallwar:command/add/random with storage minecraft:temp temp.length

#选定随机的附魔
function wallwar:command/add/fix/add/id with storage minecraft:temp temp.random

