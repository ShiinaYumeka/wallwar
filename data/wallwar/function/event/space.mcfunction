


title @a title ["",{"translate":"【太空人】","color": "red"}]
title @a subtitle ["",{"translate":"所有玩家的跳跃力度增加","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【太空人】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有玩家的跳跃高度提升为3格","color": "white"}]
tellraw @a ["",{"translate":"“爷爷奶奶可高兴了，给我爱吃的致密V重锤”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]



#execute as @a[team=!sp] run attribute @s jump_strength base set 0.6
execute as @a[team=!sp] run effect give @a jump_boost infinite 3 true