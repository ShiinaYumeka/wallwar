
title @s title ["",{"translate":"【往日回忆】","color": "red"}]
title @s subtitle ["",{"translate":"现在在场地中心刷新三个凋零","color": "gray"}]

execute at @s run summon wither ~ 315 ~
execute at @s run summon wither ~6 315 ~6
execute at @s run summon wither ~-6 315 ~-6

tag @s remove event_wither