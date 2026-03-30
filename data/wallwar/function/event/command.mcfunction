


title @a title ["",{"translate":"【无限火火火火火力】","color": "red"}]
title @a subtitle ["",{"translate":"获得一个命令方块和连锁命令方块","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【无限火火火火火力】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<开局事件>","color": "gold"}]
tellraw @a ["",{"translate":"每个玩家获得一个命令方块，每个队伍获得一个连锁命令方块","color": "white"}]
tellraw @a ["",{"translate":"“海牛哥友情亲情爱情赞助”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

give @a[team=!sp,gamemode=!spectator] command_block 1
give @r[team=red,gamemode=!spectator] chain_command_block 1
give @r[team=blue,gamemode=!spectator] chain_command_block 1
give @r[team=yellow,gamemode=!spectator] chain_command_block 1
give @r[team=green,gamemode=!spectator] chain_command_block 1
scoreboard players set @a recipe 2