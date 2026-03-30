
title @a title ["",{"translate":"【人道主义关怀】","color": "red"}]
title @a subtitle ["",{"selector": "@a[tag=event_vote_p]"},{"translate":"成为了形式主义的牺牲品。","color": "gray"}]
title @a times 10 40 10

execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] unless score @s HELP_ME matches 1.. run give @s golden_apple[food={"can_always_eat": true,"nutrition": 4,"saturation": 6},consumable={consume_seconds:1.4,"on_consume_effects":[{"type": "apply_effects","effects": [{"id": "absorption","duration": 2400,"amplifier": 0},{"id": "regeneration","duration": 140,"amplifier": 1}]}]}] 1
scoreboard objectives remove HELP_ME

tag @a remove event_vote_p

gamerule send_command_feedback true

scoreboard players set FUN time 0