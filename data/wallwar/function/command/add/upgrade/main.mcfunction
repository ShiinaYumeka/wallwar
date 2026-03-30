

data modify storage minecraft:temp temp.temp set from storage minecraft:temp temp.enchList
#剔除未拥有附魔
execute if data storage minecraft:temp temp.temp[0] run function wallwar:command/add/upgrade/find

#属性均没有拥有时随机升一级
execute unless data storage minecraft:temp temp.ench[0] run return run function wallwar:command/add/upgrade/add/main

#最大编号获取
execute store result score #count temp run data get storage minecraft:temp temp.ench
scoreboard players remove #count temp 1
execute store result storage minecraft:temp temp.length.num int 1 run scoreboard players get #count temp

#获取随机编号
function wallwar:command/add/random with storage minecraft:temp temp.length

#选定随机的附魔
function wallwar:command/add/upgrade/id with storage minecraft:temp temp.random

