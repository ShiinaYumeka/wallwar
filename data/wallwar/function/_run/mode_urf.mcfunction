
execute if score #URF_MODE time matches 1.. run return run scoreboard players reset #URF_MODE time

scoreboard players set #URF_MODE time 1
tellraw @a [{"translate":"[系统]: "},{"translate":"无限火力模式已开启"}]

