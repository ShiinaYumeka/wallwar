

gamemode survival @s
tag @s add FIGHT
tag @s remove free_combat_temp

scoreboard players reset @s invisible

function wallwar:respawn/tp_center
function wallwar:respawn/kit_combat

title @s title {"translate":"你重生了"}
title @s subtitle {"translate":"“在战场中心，再战一轮……”"}

tellraw @s [{"translate":"[战墙] "},{"translate":"你已使用本局唯一的中心复活机会","color":"gold"}]
tellraw @a [{"translate":"[战墙] "},{"selector":"@s"},{"translate":" 在战场中心重获新生","color":"white"}]

