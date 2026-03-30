


title @a title ["",{"translate":"【矿工国度】","color": "red"}]
title @a subtitle ["",{"translate":"所有玩家体型缩小、挖掘速度提升","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【矿工国度】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<开局事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有玩家体型缩小10%并且挖掘效率提升2","color": "white"}]
tellraw @a ["",{"translate":"“当上帝为你关了一扇门，他就会给你开一扇窗”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]



execute as @a[team=!sp] run attribute @s scale base set 0.9
execute as @a[team=!sp] run attribute @s minecraft:mining_efficiency base set 2
