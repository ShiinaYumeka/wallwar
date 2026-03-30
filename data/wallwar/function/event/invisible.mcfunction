
title @a title ["",{"translate":"【透明人间】","color": "red"}]
title @a subtitle ["",{"translate":"所有玩家获得隐身效果","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【透明人间】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有玩家获得隐身效果","color": "white"}]
tellraw @a ["",{"translate":"“我知道你想干什么，但是所有人都隐身了”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

effect give @a invisibility infinite 4 true
