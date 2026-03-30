
execute if score #EVENT time matches 1.. run return run scoreboard players reset #EVENT time

scoreboard players set #EVENT time 1
tellraw @a [{"translate":"[系统]: "},{"translate":"事件模式已开启"}]
