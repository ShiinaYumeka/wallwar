
scoreboard players set #bomb_y temp 0
function wallwar:head/bomb/loop_y
scoreboard players add #bomb_z temp 1
execute if score #bomb_z temp matches ..4 positioned ~ ~ ~1 run function wallwar:head/bomb/loop_z
