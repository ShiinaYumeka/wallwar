
data modify storage minecraft:temp temp.ench set from storage minecraft:temp temp.enchList

#最大编号获取
execute store result score #count temp run data get storage minecraft:temp temp.ench
scoreboard players remove #count temp 1
execute store result storage minecraft:temp temp.length.num int 1 run scoreboard players get #count temp

#获取随机编号
function wallwar:command/add/random with storage minecraft:temp temp.length

#选定随机的附魔
function wallwar:command/add/upgrade/add/id with storage minecraft:temp temp.random

