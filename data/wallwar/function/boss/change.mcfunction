
#scoreboard players operation #hp temp = #other_team temp
scoreboard players operation #hp temp = #boss_team temp
scoreboard players remove #hp temp 1
scoreboard players operation #hp temp *= 2 const
execute store result storage minecraft:temp temp.hp double 1 run scoreboard players add #hp temp 20
function wallwar:boss/change_a with storage minecraft:temp temp