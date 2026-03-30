

execute if score GAME_PRO time matches 2 run return run function wallwar:event/gift/use

title @a title ["",{"translate":"【浴火重生】","color": "red"}]
title @a subtitle ["",{"translate":"所有队伍玩家随机复活玩家并获得瓦尔基里套装","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【浴火重生】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<阶段事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有队伍玩家随机复活一名玩家并获得瓦尔基里套装","color": "white"}]
tellraw @a ["",{"translate":"如果你们队伍没有人死亡，则改为获得一个凋零头颅","color": "white"}]
tellraw @a ["",{"translate":"“也许我像猫一样只有有九条命，最后我还是会死。 ——《忌日快乐》”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

execute unless entity @a[team=red,gamemode=spectator,tag=!FIGHT] run give @r[team=red] player_head[profile={name:"Shina_Hiyori"}]
execute unless entity @a[team=blue,gamemode=spectator,tag=!FIGHT] run give @r[team=blue] player_head[profile={name:"Shina_Hiyori"}]
execute unless entity @a[team=yellow,gamemode=spectator,tag=!FIGHT] run give @r[team=yellow] player_head[profile={name:"Shina_Hiyori"}]
execute unless entity @a[team=green,gamemode=spectator,tag=!FIGHT] run give @r[team=green] player_head[profile={name:"Shina_Hiyori"}]

execute as @r[team=red,gamemode=spectator,tag=!FIGHT] run function wallwar:event/respawn/red
execute as @r[team=blue,gamemode=spectator,tag=!FIGHT] run function wallwar:event/respawn/blue
execute as @r[team=green,gamemode=spectator,tag=!FIGHT] run function wallwar:event/respawn/green
execute as @r[team=yellow,gamemode=spectator,tag=!FIGHT] run function wallwar:event/respawn/yellow

