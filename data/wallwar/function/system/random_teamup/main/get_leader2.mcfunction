

scoreboard players operation @s tid = Teams temp
function wallwar:system/team/join
tag @s add leader

tellraw @a [{"translate":"[系统]: "},{"selector":"@s"},{"translate":"成为了队长！"}]
