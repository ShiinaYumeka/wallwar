

team join sp @a

playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
scoreboard players set Teams time 3

execute as @r[team=sp] run function wallwar:system/random_teamup/z/3

tellraw @a [{"translate":"[系统]: "},{"translate":"*队伍选项更替为"},{"translate":" 3队模式","color":"yellow"}]

