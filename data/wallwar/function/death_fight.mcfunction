
gamerule spawn_mobs false

title @a times 10 20 10

execute at 0-0-0-0-1 positioned ~-40 259 ~-40 as @e[type=!player,dx=80,dy=100,dz=80] run kill @s

execute at 0-0-0-0-1 run tp @a[team=sp] ~ 300 ~

execute as 0-0-0-0-1 at @s run function wallwar:death_fight/start

worldborder damage amount 20

scoreboard players set GAME time 2400
bossbar set gauge4 max 2400

scoreboard players set GAME_PRO time 5

function wallwar:system/bossbar_hunger
#effect give @a[tag=FIGHT] minecraft:hunger infinite 0
effect give @a[tag=FIGHT] minecraft:resistance 2 4 true


title @a title {"translate":"死斗模式","color":"dark_red"}
title @a subtitle {"translate":"全体玩家受到饥饿2效果影响"}

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"<死斗阶段>","color": "gold"}]
tellraw @a ["",{"translate":"本阶段将玩家集体传送至死斗平台进行死斗","color": "white"}]
tellraw @a ["",{"translate":"·随时间给予所有玩家越来越强的中毒、凋零效果","color": "white"}]
tellraw @a ["",{"translate":"·在终阶段，神的意志将会化为伊甸之果降临于场地中央","color": "white"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]

execute if entity @a[tag=marking_team] run function wallwar:system/mark/yes

execute unless score GAME_PRO time matches 6.. as @e[type=item_frame,tag=building_battle] at @s if entity @s[y=-64,dy=154] positioned ~ ~-1 ~ run function wallwar:build/battle/use/main
execute unless score GAME_PRO time matches 6.. as @e[type=item_frame,tag=building_court] at @s if entity @s[y=30,dy=290] run function wallwar:build/court/mark/main

#
#execute as @a[tag=wither_user] at @s run function wallwar:wither/summon
