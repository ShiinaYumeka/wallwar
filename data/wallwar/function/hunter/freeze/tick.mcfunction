
execute as @a[team=red,gamemode=!spectator] at @s run function wallwar:hunter/freeze/apply

scoreboard players add #hunter_freeze_clock time 1
execute unless score #hunter_freeze_clock time matches 20.. run return fail
scoreboard players set #hunter_freeze_clock time 0

scoreboard players remove #hunter_freeze_left time 1
execute store result bossbar wallwar:hunter_freeze value run scoreboard players get #hunter_freeze_left time
bossbar set wallwar:hunter_freeze name [{"translate":"猎人冻结: ","color":"white","bold":true},{"score":{"name":"#hunter_freeze_left","objective":"time"},"color":"aqua","bold":true},{"translate":"s","color":"white","bold":true}]
bossbar set wallwar:hunter_freeze players @a
bossbar set wallwar:hunter_freeze visible true

execute unless score #hunter_freeze_left time matches 1.. run bossbar set wallwar:hunter_freeze visible false
execute unless score #hunter_freeze_left time matches 1.. run tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"translate":"猎人冻结结束！","color":"aqua"}]
execute unless score #hunter_freeze_left time matches 1.. as @a run attribute @s jump_strength modifier remove hunter_freeze_jump
