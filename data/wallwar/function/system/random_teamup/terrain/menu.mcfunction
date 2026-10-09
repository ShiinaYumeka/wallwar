execute unless entity @a[tag=ww_captain,scores={tid=4}] run tellraw @s {"text":"[选择 红色 / 东南 (+X,+Z) 地形]","color":"red","click_event":{"action":"run_command","command":"/trigger ww_terrain set 4"}}
execute unless entity @a[tag=ww_captain,scores={tid=3}] run tellraw @s {"text":"[选择 黄色 / 西南 (-X,+Z) 地形]","color":"yellow","click_event":{"action":"run_command","command":"/trigger ww_terrain set 3"}}
execute unless entity @a[tag=ww_captain,scores={tid=1}] run tellraw @s {"text":"[选择 蓝色 / 东北 (+X,-Z) 地形]","color":"blue","click_event":{"action":"run_command","command":"/trigger ww_terrain set 1"}}
execute unless entity @a[tag=ww_captain,scores={tid=2}] run tellraw @s {"text":"[选择 绿色 / 西北 (-X,-Z) 地形]","color":"green","click_event":{"action":"run_command","command":"/trigger ww_terrain set 2"}}
