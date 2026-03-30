
tag @s add event_vote_p

title @a title ["",{"translate":"【人道主义关怀】","color": "red"}]
title @a subtitle ["",{"translate":"抉择是否对","color": "gray"},{"selector": "@s"},{"translate":"进行资助","color": "gray"}]
title @a times 10 40 10

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"【人道主义关怀】","bold": true,"color": "red"}]
tellraw @a ["",{"translate":"<特殊事件>","color": "gold"}]
tellraw @a ["",{"translate":"所有存活玩家进行一次投票，是否对","color": "white"},{"selector": "@s"},{"translate": "进行资助"},{"translate": " [点击赞成] ","color": "gold","click_event": {"action": "run_command","command": "/trigger HELP_ME"}}]
tellraw @a ["",{"translate":"如果半数通过则令其获得三个命令方块，并使所有选择赞成的玩家获得一个凋零骷髅头。","color": "white"}]
tellraw @a ["",{"translate":"无论是否通过，所有未选择赞成的玩家获得一个金苹果。","color": "white"}]
tellraw @a ["",{"translate":"“正道的光，照在了大地上~”","color": "gray"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

scoreboard objectives add HELP_ME trigger "人道主义光辉"
scoreboard players enable @a[tag=FIGHT,team=!sp,gamemode=!spectator] HELP_ME
execute store result score 0-0-0-0-1 HELP_ME if entity @a[tag=FIGHT,team=!sp,gamemode=!spectator]
scoreboard players operation 0-0-0-0-1 HELP_ME /= 2 const

execute unless score 0-0-0-0-1 HELP_ME matches 1.. run scoreboard players set 0-0-0-0-1 HELP_ME 1

schedule function wallwar:event/vote/fail 60s replace
gamerule send_command_feedback false
scoreboard players set FUN time 0