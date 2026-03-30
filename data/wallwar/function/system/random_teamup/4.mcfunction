

team join sp @a

playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
scoreboard players set Teams time 4

execute as @r[team=sp] run function wallwar:system/random_teamup/z/4

tellraw @a [{"translate":"[系统]: "},{"translate":"*队伍选项更替为"},{"translate":" 4队模式","color":"yellow"}]

