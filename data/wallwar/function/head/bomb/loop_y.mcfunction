
scoreboard players set #bomb_x temp 0
function wallwar:head/bomb/loop_x
scoreboard players add #bomb_y temp 1
execute if score #bomb_y temp matches ..4 positioned ~ ~1 ~ run function wallwar:head/bomb/loop_y
