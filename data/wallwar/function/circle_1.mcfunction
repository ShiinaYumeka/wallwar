

execute as @a at @s run playsound minecraft:block.anvil.land player @s

title @a times 20 60 20

scoreboard players set GAME time 12000

scoreboard players set GAME_PRO time 3

worldborder set 301 3600
bossbar set minecraft:gauge2 max 12000
function wallwar:system/bossbar_circle

title @a title {"translate":" "}
title @a subtitle {"translate":"世界边界将在3分钟内缩小至300"}


tellraw @a ["",{"translate":"<硝烟渐起>","color": "gold"}]
tellraw @a ["",{"translate":"本阶段所有y<30的玩家会受到凋零I效果的影响","color": "white"}]
execute unless score #BOSS_MODE time matches 1.. run function wallwar:system/mark/main

execute if score #EVENT time matches 1.. run schedule function wallwar:event/main/norm 10s replace
execute store result score #temp temp if entity @a[team=!sp,gamemode=spectator,tag=!FIGHT]
execute if score #EVENT time matches 1.. if score FUN time matches 34..67 if score #temp temp matches ..5 run schedule function wallwar:event/wither_sp/use 20s replace

execute unless score GAME_PRO time matches 6.. as @e[type=item_frame,tag=building_battle] at @s if entity @s[y=-64,dy=154] positioned ~ ~-1 ~ run function wallwar:build/battle/use/main
execute unless score GAME_PRO time matches 6.. as @e[type=item_frame,tag=building_court] at @s if entity @s[y=30,dy=290] run function wallwar:build/court/mark/main

execute as @e[type=item_frame] run data modify entity @s Fixed set value 1b
execute as @e[type=item_frame] run data modify entity @s Invulnerable set value 1b
schedule function wallwar:build/protection 3600 replace
