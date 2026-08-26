
execute unless score #hunter_freeze time matches 1.. run return fail

scoreboard players operation #hunter_freeze_left time = #hunter_freeze time
execute store result bossbar wallwar:hunter_freeze max run scoreboard players get #hunter_freeze_left time
execute store result bossbar wallwar:hunter_freeze value run scoreboard players get #hunter_freeze_left time
bossbar set wallwar:hunter_freeze visible true
bossbar set wallwar:hunter_freeze players @a
bossbar set wallwar:hunter_freeze name [{"translate":"猎人冻结: ","color":"white","bold":true},{"score":{"name":"#hunter_freeze_left","objective":"time"},"color":"aqua","bold":true},{"translate":"s","color":"white","bold":true}]
tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"translate":"猎人冻结 ","color":"white"},{"score":{"name":"#hunter_freeze_left","objective":"time"},"color":"aqua"},{"translate":" 秒","color":"white"}]
