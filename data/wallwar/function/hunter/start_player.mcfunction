
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

clear @s
gamemode survival @s

effect clear @s
effect give @s minecraft:instant_health 1 20
effect give @s minecraft:saturation 5 20 true
effect give @s[team=red] hunger 2 200 true
effect give @s[tag=!no_nightvision] night_vision infinite 0 true


give @s wooden_pickaxe[attribute_modifiers=[{type:"attack_damage",id:"copper",amount:0.0,operation:"add_value"}]]
give @s wooden_shovel[attribute_modifiers=[{type:"attack_damage",id:"copper",amount:0.0,operation:"add_value"}]]
give @s wooden_hoe[attribute_modifiers=[{type:"attack_damage",id:"copper",amount:0.0,operation:"add_value"}]]
give @s oak_leaves 5
give @s apple 5



playsound minecraft:entity.player.levelup player @s ~ ~ ~
title @s title {"translate":"猎人模式"}
title @s subtitle {"translate":"猎杀或逃亡，开始！"}
scoreboard players reset @s time
tag @s remove wither_user

execute unless score @s hunter_uid matches 1.. run function wallwar:hunter/assign_uid
execute if entity @s[team=red] run recipe give @s wallwar:hunter/eye
