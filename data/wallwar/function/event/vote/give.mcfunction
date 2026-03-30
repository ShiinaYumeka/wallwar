
title @a title ["",{"translate":"【人道主义关怀】","color": "red"}]
title @a subtitle ["",{"selector": "@a[tag=event_vote_p]"},{"translate":"成功获得了人道主义援助。","color": "gray"}]
title @a times 10 40 10

execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] if score @s HELP_ME matches 1.. run give @s wither_skeleton_skull 1
execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] unless score @s HELP_ME matches 1.. run give @s golden_apple[food={"can_always_eat": true,"nutrition": 4,"saturation": 6},consumable={consume_seconds:1.4,"on_consume_effects":[{"type": "apply_effects","effects": [{"id": "absorption","duration": 2400,"amplifier": 0},{"id": "regeneration","duration": 140,"amplifier": 1}]}]}] 1
scoreboard objectives remove HELP_ME
give @a[tag=event_vote_p] command_block 3

schedule clear wallwar:event/vote/fail
tag @a remove event_vote_p

gamerule send_command_feedback true

scoreboard players set FUN time 0