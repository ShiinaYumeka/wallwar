execute if score #ww_phase time matches 1..2 run return 0
execute if score #ww_phase time matches 3 unless entity @s[tag=ww_participant,tag=!ww_captain,scores={tid=0}] run return 0
scoreboard players set #ww_attacker temp 0
execute on attacker if entity @s[tag=leader,tag=choosing] run scoreboard players set #ww_attacker temp 1
execute unless score #ww_attacker temp matches 1 run return 0

execute on attacker run scoreboard players operation #temp tid = @s tid
scoreboard players operation @s tid = #temp tid
function wallwar:system/team/join
tellraw @a [{"translate":"[系统]: "},{selector:"@s"},{"translate":"被选中了"}]

effect give @s glowing infinite 0 true
tag @s add chose

