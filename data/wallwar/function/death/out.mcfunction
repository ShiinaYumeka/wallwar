
#summon item ~ ~ ~ {Tags:["new"],Item:{id:player_head,count:1b,components:{"lore":['{"translate":"右键回复生命值并转化为不可使用头颅","color": "gray","italic": false}'],"attribute_modifiers": [{"id": "no_put","type": "block_interaction_range","amount": -10,"operation": "add_value","slot": "hand"}],"food": {"can_always_eat": true,"nutrition": 4,"saturation": 9.6},"consumable": {"animation":"eat","consume_seconds": 0.05,"checks": [{"check": {"id": "absorption","duration": 2400,"amplifier": 0}},{"check": {"id": "regeneration","duration": 100,"amplifier": 1}}],"using_converts_to": {"id": "player_head","components": {"profile": {"name": "ShiinaYumeka"},"item_name": {"translate":"???头颅"}}}}}}}
#data modify entity @n[tag=new] Item.components.minecraft:profile.name set from entity @s CustomName
#data modify entity @n[tag=new] Item.components.minecraft:profile.id set from entity @s UUID

execute if entity @s[tag=wither_user_respawn] at @s run function wallwar:wither/skill/player/use2
tag @s remove wither_user_respawn

execute if entity @s[tag=building_court_marked] run function wallwar:build/court/kill/main
execute if entity @s[tag=battle_bone_player] run function wallwar:build/battle/effect/bone
execute as @a[scores={kill=1..}] run function wallwar:death/killer
scoreboard players reset #respawn_suc temp
execute unless score @s respawn matches 1.. if entity @e[tag=building_respawn] run function wallwar:build/respawn/check
execute if score #respawn_suc temp matches 1 run return fail

execute unless entity @s[tag=wither_sword] run function wallwar:death/head
tag @n[tag=new] remove new


tag @s remove FIGHT

title @s title {"translate":"游戏结束"}
title @s subtitle {"translate":"你失败了"}

tellraw @a [{"translate":"[战墙] "},{"selector":"@s"},{"translate":" 在本局游戏中淘汰！","color":"white"}]

execute if score GAME_PRO time matches 5.. run scoreboard players add GAME time 300

gamemode spectator @s
tag @s remove wither_user


scoreboard players add @s respawn 1
scoreboard players reset @a kill

execute if score #EVENT time matches 1.. if score FUN time matches 1..33 run function wallwar:event/vote/test
