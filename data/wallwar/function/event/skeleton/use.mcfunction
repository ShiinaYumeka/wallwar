
title @a title ["",{"translate":"【惊悚恐怖骷髅】","color": "red"}]
title @a subtitle ["",{"translate":"给予每个玩家一个凋灵骷髅头","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【惊悚恐怖骷髅】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"给予每个玩家一个凋灵骷髅头","color": "white"}]
tellraw @a ["",{"translate":"“我们是不是来错地方了，这里好像不是地狱堡垒”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

execute as @a[team=!sp,gamemode=!spectator] at @s run give @s wither_skeleton_skull[enchantments={protection:7}]