
title @a title ["",{"translate":"【猎魔人】","color": "red"}]
title @a subtitle ["",{"translate":"所有玩家的安全摔落高度下降为2格","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【猎魔人】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有玩家的安全摔落高度下降为2格","color": "white"}]
tellraw @a ["",{"translate":"“我知道现在情况非常紧急，所以来盘昆特牌吗？”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

execute as @a[team=!sp] run attribute @s safe_fall_distance base set 2

