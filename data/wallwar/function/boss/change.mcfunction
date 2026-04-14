
#scoreboard players operation #hp temp = #other_team temp
scoreboard players operation #hp temp = #boss_team temp
scoreboard players remove #hp temp 2
execute if score #hp temp matches ..0 run scoreboard players set #hp temp 0
scoreboard players operation #hp temp *= 6 const
execute store result storage minecraft:temp temp.hp double 1 run scoreboard players add #hp temp 20
function wallwar:boss/change_a with storage minecraft:temp temp

give @s chain_command_block[enchantments={vanishing_ench:1}] 1
tag @s add boss_player
scoreboard players set @s recipe 2
