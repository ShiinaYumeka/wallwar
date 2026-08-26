
scoreboard players set #Hunter_MODE time 1
scoreboard players reset #BOSS_MODE time
scoreboard players reset #URF_MODE time
scoreboard players reset #hunter_freeze time
scoreboard players reset #hunter_freeze_left time
scoreboard players set #hunter_uid hunter_uid 0
scoreboard players reset @a hunter_uid
scoreboard players reset @a hunter_tracking
tag @a remove hunter_player
tag @a remove runner_player

scoreboard objectives add hunter_join trigger
scoreboard objectives add runner_join trigger
scoreboard objectives add hunter_freeze trigger
scoreboard objectives add hunter_uid dummy
scoreboard objectives add hunter_tracking dummy
scoreboard objectives add hunter_drop_compass minecraft.dropped:minecraft.compass
scoreboard objectives add hunter_drop_eye minecraft.dropped:minecraft.ender_eye
scoreboard objectives add hunter_use_eye minecraft.used:minecraft.ender_eye
scoreboard objectives add hunter_temp dummy

bossbar set wallwar:hunter_freeze visible false

kill 0-0-0-0-1
forceload remove all
forceload add ~ ~ ~ ~
execute align xyz rotated 0 0 run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["ctp","hunter_center"],UUID:[I;0,0,0,1]}

execute as 0-0-0-0-1 at @s run spawnpoint @a ~ ~ ~
execute as 0-0-0-0-1 at @s run setworldspawn ~ ~ ~

scoreboard players enable @a hunter_join
scoreboard players enable @a runner_join
scoreboard players enable @a hunter_freeze

gamemode adventure @a[team=!sp]
team join waiting @a[team=!sp]
scoreboard players set @a[team=waiting] tid 0

tellraw @a [""]
tellraw @a ["",{"translate":"-----------------------------------------------------","color":"gray"}]
tellraw @a ["",{"translate":"<猎人模式> 已初始化","color":"gold"}]
tellraw @a ["",{"translate":" [加入猎人] ","color":"red","click_event":{"action":"run_command","command":"/trigger hunter_join"}},{"translate":" [加入逃者] ","color":"green","click_event":{"action":"run_command","command":"/trigger runner_join"}}]
tellraw @a ["",{"translate":"开局冻结猎人（默认0秒）：","color":"aqua"},{"translate":" /trigger hunter_freeze set <1-100>","color":"gray"},{"translate":" [清零] ","color":"gray","click_event":{"action":"run_command","command":"/scoreboard players set #hunter_freeze time 0"}}]
tellraw @a ["",{"translate":"准备完成后使用管理书 [开始游戏]","color":"yellow"}]
tellraw @a ["",{"translate":"-----------------------------------------------------","color":"gray"}]
