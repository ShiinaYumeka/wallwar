
scoreboard players reset @s respawn
scoreboard players reset @s afk
scoreboard players reset @s fish


scoreboard players enable @s suicide
title @s times 10 40 10

advancement revoke @s everything

xp set @s 5 levels
xp set @s 0 points

attribute @s max_health base set 20
attribute @s minecraft:waypoint_receive_range base set 0

tag @s remove FIGHT

clear @s
gamemode spectator @s[team=sp]
gamemode survival @s[team=!sp]

effect clear @s

effect give @s minecraft:instant_health 1 20
effect give @s minecraft:saturation 5 20 true
effect give @s[tag=!no_nightvision] night_vision infinite 0 true

execute unless score #URF_MODE time matches 1.. run function wallwar:system/item/main
execute if score #URF_MODE time matches 1.. run function wallwar:boss_urf/start_player

tp @s[team=red] ~3 ~2 ~3
tp @s[team=blue] ~3 ~2 ~-3
tp @s[team=green] ~-3 ~2 ~-3
tp @s[team=yellow] ~-3 ~2 ~3

playsound minecraft:entity.player.levelup player @s ~ ~ ~


title @s title {"translate":"游戏开始"}
title @s subtitle {"translate":"预备阶段，收集你的资源"}
scoreboard players reset @s time
tag @s remove wither_user


#give @s minecraft:red_bundle[custom_name={text:"红包",color:"red",bold:true,italic:false},lore=[{text:"新年快乐！",color:"red",bold:false,italic:false}],bundle_contents=[{id:"chest",components:{"minecraft:container_loot":{"loot_table":"wallwar:misc/gift"}}}]]

