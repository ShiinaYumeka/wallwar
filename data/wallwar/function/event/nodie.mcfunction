
title @a title ["",{"translate":"【自杀禁止日】","color": "red"}]
title @a subtitle ["",{"translate":"所有玩家获得生命提升和速度效果","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【自杀禁止日】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<开局事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有玩家获得永续的生命提升I和速度I（死亡后消失）","color": "white"}]
tellraw @a ["",{"translate":"“我们平时的每一天都有可能是别人梦寐以求的天堂，珍惜自己的生命吧”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

effect give @a health_boost infinite 0 true
effect give @a speed infinite 0 true
