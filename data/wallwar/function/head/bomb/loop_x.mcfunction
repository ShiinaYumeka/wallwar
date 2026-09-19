
execute unless block ~ ~ ~ #wallwar:mini_bomb_immune unless block ~ ~ ~ #minecraft:air run setblock ~ ~ ~ air destroy
scoreboard players add #bomb_x temp 1
execute if score #bomb_x temp matches ..4 positioned ~1 ~ ~ run function wallwar:head/bomb/loop_x
