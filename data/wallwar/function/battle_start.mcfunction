

scoreboard players reset @a respawn
tag @a add FIGHT

scoreboard players set GAME time 24000
bossbar set minecraft:gauge2 max 24000

scoreboard players set GAME_PRO time 2
scoreboard players set GAMEMODE time 2

tp @a[team=sp] @e[limit=1,tag=ctp]

function wallwar:system/bossbar_circle

gamerule keep_inventory false
difficulty hard

execute as 0-0-0-0-1 at @s run function wallwar:wall_off

title @a title {"translate":"战斗阶段"}
title @a subtitle {"translate":"击杀所有敌人"}


tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"<战斗阶段>","color": "gold"}]
tellraw @a ["",{"translate":"本阶段阻隔玩家的基岩墙会变为矿物墙，玩家可以进攻其他队伍。","color": "white"}]
tellraw @a ["",{"translate":"·四个追溯指针已经投放在距离中心横纵坐标均75格的位置","color": "white"}]
tellraw @a ["",{"translate":"·难度将改为困难，且死亡后掉落所有物品、无法复活","color": "white"}]
tellraw @a ["",{"translate":"·击杀玩家会额外掉落一个玩家头颅和一个速食金苹果","color": "white"}]
tellraw @a ["",{"translate":"·玩家因其他方式死亡会额外掉落一个凋零骷髅头颅","color": "white"}]
tellraw @a ["",{"translate":"·处于Y<0的玩家将受到凋零II效果影响，请务必远离地底","color": "white"}]
tellraw @a ["",{"translate":"-凋零伤害无视护甲与保护等级并清除玩家的生命回复效果","color": "white"}]
execute if score #EVENT time matches 1.. run tellraw @a ["",{"translate":"·10秒后刷新一个<阶段事件>","color": "white"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]


execute as 0-0-0-0-1 at @s run function wallwar:observer/cast


execute if score #EVENT time matches 1.. run schedule function wallwar:event/main/norm 10s replace
execute unless score GAME_PRO time matches 6.. as @e[type=item_frame,tag=building_battle] at @s if entity @s[y=-64,dy=154] positioned ~ ~-1 ~ run function wallwar:build/battle/use/main
execute unless score GAME_PRO time matches 6.. as @e[type=item_frame,tag=building_court] at @s if entity @s[y=30,dy=290] run function wallwar:build/court/mark/main
