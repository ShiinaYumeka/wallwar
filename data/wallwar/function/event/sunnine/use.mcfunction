
title @a title ["",{"translate":"【九个太阳】","color": "red"}]
title @a subtitle ["",{"translate":"在每个玩家头顶召唤一个向下发射的火球术","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【九个太阳】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"每过一段时间在每个玩家头顶召唤一个向下发射的火球术","color": "white"}]
tellraw @a ["",{"translate":"“相传古有一人名裔，曾射九日”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

schedule function wallwar:event/sunnine/cast 60s replace
