

tellraw @s [{"translate":"[系统]: "},{selector:"@s"},{"translate":"被抛弃了"}]
scoreboard players set @s tid 0
function wallwar:system/team/join

effect clear @s glowing
tag @s remove chose

