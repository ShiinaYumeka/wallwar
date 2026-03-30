
gamerule immediate_respawn false
gamerule spawn_mobs true

function wallwar:system/bossbar_clear
scoreboard players set OVER time 0

execute as 0-0-0-0-1 at @s as @a run function wallwar:system/start_player

time set day

scoreboard players set GAMEMODE time 1
scoreboard players set GAME time 48000

scoreboard players set GAME_PRO time 1

function wallwar:system/bossbar_wall

bossbar remove dead_line
bossbar remove ocean

execute as 0-0-0-0-1 at @s run spawnpoint @a[team=red] ~3 ~2 ~3
execute as 0-0-0-0-1 at @s run spawnpoint @a[team=blue] ~3 ~2 ~-3
execute as 0-0-0-0-1 at @s run spawnpoint @a[team=green] ~-3 ~2 ~-3
execute as 0-0-0-0-1 at @s run spawnpoint @a[team=yellow] ~-3 ~2 ~3

execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~3 air replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~3 air replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~-3 air replace
execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~-3 air replace

execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~3 red_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:4b},{id:"wheat_seeds",Slot:2b,count:10b},{id:"item_frame",Slot:3b,count:1b},{id:"water_bucket",Slot:4b,count:1b},{id:"oak_sapling",Slot:5b,count:16b},{id:"red_banner",Slot:6b,count:1b},{id:"leather",Slot:7b,count:4b}]} replace
execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~-3 light_blue_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:4b},{id:"wheat_seeds",Slot:2b,count:10b},{id:"item_frame",Slot:3b,count:1b},{id:"water_bucket",Slot:4b,count:1b},{id:"oak_sapling",Slot:5b,count:16b},{id:"light_blue_banner",Slot:6b,count:1b},{id:"leather",Slot:7b,count:4b}]} replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~-3 lime_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:4b},{id:"wheat_seeds",Slot:2b,count:10b},{id:"item_frame",Slot:3b,count:1b},{id:"water_bucket",Slot:4b,count:1b},{id:"oak_sapling",Slot:5b,count:16b},{id:"lime_banner",Slot:6b,count:1b},{id:"leather",Slot:7b,count:4b}]} replace
execute as 0-0-0-0-1 at @s run setblock ~-3 ~1 ~3 yellow_shulker_box{Items:[{id:"enchanting_table",Slot:0b,count:1b},{id:"sugar_cane",Slot:1b,count:4b},{id:"wheat_seeds",Slot:2b,count:10b},{id:"item_frame",Slot:3b,count:1b},{id:"water_bucket",Slot:4b,count:1b},{id:"oak_sapling",Slot:5b,count:16b},{id:"yellow_banner",Slot:6b,count:1b},{id:"leather",Slot:7b,count:4b}]} replace

execute if score #URF_MODE time matches 1.. run function wallwar:boss_urf/start

#execute as @r[team=blue] run function wallwar:system/item/ench
#execute as @r[team=red] run function wallwar:system/item/ench
#execute as @r[team=yellow] run function wallwar:system/item/ench
#execute as @r[team=green] run function wallwar:system/item/ench
#
#execute as @r[team=blue] run function wallwar:system/item/sugar_cane
#execute as @r[team=red] run function wallwar:system/item/sugar_cane
#execute as @r[team=yellow] run function wallwar:system/item/sugar_cane
#execute as @r[team=green] run function wallwar:system/item/sugar_cane

#execute as @r[team=blue] run function wallwar:system/item/seed
#execute as @r[team=red] run function wallwar:system/item/seed
#execute as @r[team=yellow] run function wallwar:system/item/seed
#execute as @r[team=green] run function wallwar:system/item/seed

#execute as @r[team=blue] run function wallwar:system/item/frame
#execute as @r[team=red] run function wallwar:system/item/frame
#execute as @r[team=yellow] run function wallwar:system/item/frame
#execute as @r[team=green] run function wallwar:system/item/frame
execute store result score FUN time run random value 1..100

gamerule mob_griefing true
gamerule keep_inventory true
gamerule spawn_phantoms false
gamerule random_tick_speed 5
#gamerule doImmediateRespawn true
difficulty easy


function wallwar:recipe


schedule function wallwar:death_fight/random 5s
execute if score #EVENT time matches 1.. run schedule function wallwar:event/main/start 10s replace


tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]
tellraw @a ["",{"translate":"<资源收集阶段>","color": "gold"}]
tellraw @a ["",{"translate":"本阶段内玩家需要收集资源以准备接下来的战斗。","color": "white"}]
tellraw @a ["",{"translate":"·难度初始为简单，死亡不掉落且可以无限复活","color": "white"}]
tellraw @a ["",{"translate":"·玩家可以通过输入/trigger suicide快速自杀","color": "white"}]
tellraw @a ["",{"translate":"·当玩家在没有“劫营速战”效果时试图翻越基岩墙会直接死亡。","color": "white"}]
execute unless score #BOSS_MODE time matches 1.. run tellraw @a ["",{"translate":"·当玩家通过末影珍珠翻越基岩墙后，获得效果“劫营速战”","color": "white"}]
execute unless score #BOSS_MODE time matches 1.. run tellraw @a ["",{"translate":"-此效果下会短暂发光且死亡后掉落一个玩家头颅","color": "white"}]
execute if score #EVENT time matches 1.. run tellraw @a ["",{"translate":"·10秒后刷新一个<开局事件>","color": "white"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color": "gray"}]


setworldspawn ~ ~ ~