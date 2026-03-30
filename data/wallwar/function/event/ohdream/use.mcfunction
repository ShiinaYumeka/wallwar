


title @a title ["",{"translate":"【极限追杀】","color": "red"}]
title @a subtitle ["",{"translate":"每个队伍随机选择一名玩家传送至敌人的出生点","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【极限追杀】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<开局事件>","color": "gold"}]
tellraw @a ["",{"translate":"每个队伍随机选择一名玩家传送至敌人的出生点，死亡后掉落一个玩家头颅","color": "white"}]
tellraw @a ["",{"translate":"这些玩家获得短暂的无敌与爆发性移动速度，并发光15分钟。","color": "white"}]
tellraw @a ["",{"translate":"若成功存活40分钟，给予其一个命令方块与一个玩家头颅","color": "white"}]
tellraw @a ["",{"translate":"“In this video .. Five of my friend will ... a handred thousand dollar..”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]


schedule function wallwar:event/ohdream/reward 2400s replace

scoreboard players set @a escape_timer 2

execute as @r[team=red,gamemode=!spectator] at 0-0-0-0-1 run function wallwar:event/ohdream/red
execute as @r[team=blue,gamemode=!spectator] at 0-0-0-0-1 run function wallwar:event/ohdream/blue
execute as @r[team=green,gamemode=!spectator] at 0-0-0-0-1 run function wallwar:event/ohdream/green
execute as @r[team=yellow,gamemode=!spectator] at 0-0-0-0-1 run function wallwar:event/ohdream/yellow

