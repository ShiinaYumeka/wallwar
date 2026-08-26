
data modify storage wallwar:hunter lodestone set value {x:0,y:0,z:0,dim:"minecraft:overworld"}
execute as @a[tag=hunter_tracking_target,limit=1] store result storage wallwar:hunter lodestone.x int 1 run data get entity @s Pos[0]
execute as @a[tag=hunter_tracking_target,limit=1] store result storage wallwar:hunter lodestone.y int 1 run data get entity @s Pos[1]
execute as @a[tag=hunter_tracking_target,limit=1] store result storage wallwar:hunter lodestone.z int 1 run data get entity @s Pos[2]
data modify storage wallwar:hunter lodestone.dim set from entity @a[tag=hunter_tracking_target,limit=1] Dimension

execute if items entity @s weapon.mainhand compass[custom_data~{tracker:1b}] run function wallwar:hunter/compass/replace with storage wallwar:hunter lodestone
execute if items entity @s weapon.offhand compass[custom_data~{tracker:1b}] unless items entity @s weapon.mainhand compass[custom_data~{tracker:1b}] run function wallwar:hunter/compass/replace_offhand with storage wallwar:hunter lodestone

title @s actionbar [{"translate":"目标: ","color":"gray"},{"selector":"@a[tag=hunter_tracking_target,limit=1]"}]
