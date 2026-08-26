
gamerule immediate_respawn false
gamerule spawn_mobs true
gamerule mob_griefing true
gamerule keep_inventory false
gamerule spawn_phantoms false
gamerule random_tick_speed 5
difficulty hard

function wallwar:system/bossbar/clear
scoreboard players set OVER time 0
scoreboard players set GAME_PRO time 2
scoreboard players set GAMEMODE time 2
scoreboard players set GAME time 999999

time set day

execute as @a[team=red] run function wallwar:hunter/start_player
execute as @a[team=green] run function wallwar:hunter/start_player

execute as 0-0-0-0-1 at @s run spawnpoint @a[team=red] ~3 ~2 ~3
execute as 0-0-0-0-1 at @s run spawnpoint @a[team=green] ~-3 ~2 ~-3
execute as 0-0-0-0-1 at @s as @a[team=red] run tp @s ~3 ~2 ~3
execute as 0-0-0-0-1 at @s as @a[team=green] run tp @s ~-3 ~2 ~-3

execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~3 air replace
execute as 0-0-0-0-1 at @s run setblock ~3 ~1 ~3 red_shulker_box{Items:[{id:"red_banner",Slot:4b,count:1b}],components:{"minecraft:lock":{items:"minecraft:compass"}}} replace

tag @a[team=red] add FIGHT
tag @a[team=green] add FIGHT
tag @a[team=red] add hunter_player
tag @a[team=green] add runner_player

function wallwar:recipe

execute as @a[team=red] run function wallwar:hunter/give_compass
advancement grant @a[team=green] only minecraft:wallwar/hunter/root
function wallwar:hunter/freeze/start

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color":"gray"}]
tellraw @a ["",{"translate":"<猎人模式>","color":"gold"}]
tellraw @a ["",{"translate":"猎人持有追踪器（丢弃切换目标）。","color":"white"}]
tellraw @a ["",{"translate":"·猎人可合成猎人之眼，丢弃后传送到追踪目标 200 格内","color":"white"}]
tellraw @a ["",{"translate":"·死亡掉落，可破坏地形","color":"white"}]
tellraw @a ["",{"translate":"·逃者被淘汰后进入旁观，可由队友复活","color":"white"}]
tellraw @a ["",{"translate":"·猎人死亡后正常复活并保持战斗状态；被逃者击杀掉落玩家头","color":"white"}]
tellraw @a ["",{"translate":"·逃者全灭则猎人胜利","color":"white"}]
tellraw @a ["",{"translate":"·逃者完成【战墙精进】获得连锁命令方块与钻石x32","color":"white"}]
tellraw @a ["",{"translate":"·逃者完成【下界巡礼】获得命令方块","color":"white"}]
tellraw @a ["",{"translate":"·猎人出生点潜影盒需手持指南针打开","color":"white"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color":"gray"}]

execute as 0-0-0-0-1 at @s run setworldspawn ~ ~ ~
