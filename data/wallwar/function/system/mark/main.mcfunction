
execute if entity @a[tag=marking_team] run return run function wallwar:system/mark/yes
tag @a remove marking_team
# 存储各队伍人数
execute store result score #red temp if entity @a[tag=FIGHT,team=red]
execute store result score #blue temp if entity @a[tag=FIGHT,team=blue]
execute store result score #green temp if entity @a[tag=FIGHT,team=green]
execute store result score #yellow temp if entity @a[tag=FIGHT,team=yellow]

# 初始化最大人数和获胜队伍标记
scoreboard players set #max temp 0
scoreboard players set #winner temp 0

# 比较并找出人数最多的队伍
execute if score #red temp > #max temp run scoreboard players set #winner temp 1
execute if score #red temp > #max temp run scoreboard players operation #max temp = #red temp

execute if score #blue temp > #max temp run scoreboard players set #winner temp 2
execute if score #blue temp > #max temp run scoreboard players operation #max temp = #blue temp

execute if score #green temp > #max temp run scoreboard players set #winner temp 3
execute if score #green temp > #max temp run scoreboard players operation #max temp = #green temp

execute if score #yellow temp > #max temp run scoreboard players set #winner temp 4
execute if score #yellow temp > #max temp run scoreboard players operation #max temp = #yellow temp

# 检查并列情况（如果多个队伍人数相同且都是最大）
execute if score #red temp = #max temp unless score #winner temp matches 1 run return fail
execute if score #blue temp = #max temp unless score #winner temp matches 2 run return fail
execute if score #green temp = #max temp unless score #winner temp matches 3 run return fail
execute if score #yellow temp = #max temp unless score #winner temp matches 4 run return fail

# 根据结果给对应队伍的玩家添加tag

execute if score #winner temp matches 1 run tag @a[team=red] add marking_team
execute if score #winner temp matches 2 run tag @a[team=blue] add marking_team
execute if score #winner temp matches 3 run tag @a[team=green] add marking_team
execute if score #winner temp matches 4 run tag @a[team=yellow] add marking_team
tellraw @a ["",{"translate":"玩家","color": "white"},{"selector": "@a[tag=marking_team]"},{"translate":"所在的队伍被标记为“君主国”","color": "white"}]
tellraw @a ["",{"translate":"“君主国”的玩家死亡后额外掉落一个头颅，然后去除其标记。","color": "white"}]
tellraw @a ["",{"translate":"使君主国覆灭的玩家会立即完全修复盔甲耐久","color": "white"}]
tellraw @a ["",{"translate":"“君主国”的玩家存活一轮后，其中的玩家将其盔甲完全修复","color": "white"}]
