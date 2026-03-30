
execute on attacker run scoreboard players operation #temp tid = @s tid
scoreboard players operation @s tid = #temp tid
function wallwar:system/team/join
tellraw @a [{"translate":"[系统]: "},{selector:"@s"},{"translate":"被选中了"}]

effect give @s glowing infinite 0 true
tag @s add chose

