


title @a title ["",{"translate":"【凋零议会】","color": "red"}]
title @a subtitle ["",{"translate":"死亡的玩家立刻加入凋零队伍并复活","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【凋零议会】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<特殊事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有当前死亡玩家复活，并重新组成“凋零议会”","color": "white"}]
tellraw @a ["",{"translate":"随机选择一名玩家成为大祭司并获得“神祈”，其余随机变为血祭品/狂信徒。","color": "white"}]
tellraw @a ["",{"translate":"凋零议会为独立队伍，独立计算胜利与死亡复活","color": "white"}]
tellraw @a ["",{"translate":"“来帮助我，重回这个“养殖场”，到时你们另有他用”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]


team add wither "黑队"
team modify wither color black
team modify wither friendlyFire false
team modify wither prefix "💔 "
team join wither @a[team=!sp,gamemode=spectator,tag=!FIGHT]

execute as @r[team=wither,gamemode=spectator] at @s run function wallwar:event/wither_sp/user
execute as @a[team=wither,gamemode=spectator,limit=2,sort=random] at @s run function wallwar:event/wither_sp/pickaxe
execute as @a[team=wither,gamemode=spectator,sort=random] at @s run function wallwar:event/wither_sp/sword

execute as 0-0-0-0-1 at @s positioned ~140 40 ~140 run function wallwar:event/wither_sp/room
