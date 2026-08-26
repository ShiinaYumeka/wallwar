
execute as @a[tag=hunter_tracking_target,limit=1] at @s run function wallwar:hunter/eye/spread
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.8 0.4 0.05 50
tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"selector":"@s"},{"translate":"已传送到 ","color":"aqua"},{"selector":"@a[tag=hunter_tracking_target,limit=1]"},{"translate":" 附近","color":"aqua"}]
