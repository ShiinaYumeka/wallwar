
execute if score GAME_PRO time matches 2 run return run function wallwar:event/gift/use

title @a title ["",{"translate":"【圣诞节的足球】","color": "red"}]
title @a subtitle ["",{"translate":"所有玩家获得抗性提升V与虚弱V持续三分钟","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【圣诞节的足球】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有玩家获得抗性提升V与虚弱V持续三分钟","color": "white"}]
tellraw @a ["",{"translate":"“1914年12月24日，德军与英军在战壕布置圣诞树并合唱《平安夜》次日部分士兵互相交换香烟与酒类等物品，共同安葬阵亡者遗体....”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

effect give @a resistance 180 4 true
effect give @a weakness 180 4 true
