
execute if score #other_team temp matches 3.. run give @s chain_command_block[enchantments={vanishing_ench:1}] 1
execute if score #other_team temp matches 6.. run give @s chain_command_block[enchantments={vanishing_ench:1}] 1
execute if score #other_team temp matches 9.. run give @s chain_command_block[enchantments={vanishing_ench:1}] 1
execute if score #other_team temp matches 14.. run give @s chain_command_block[enchantments={vanishing_ench:1}] 1
execute if score #other_team temp matches 17.. run give @s chain_command_block[enchantments={vanishing_ench:1}] 1


execute if score #boss_team temp matches 1 if score #other_team temp matches 6 run scoreboard players add #other_team temp 1
execute if score #boss_team temp matches 2 if score #other_team temp matches 9 run scoreboard players add #other_team temp 1
execute if score #boss_team temp matches 3 if score #other_team temp matches 12 run scoreboard players add #other_team temp 1
execute if score #boss_team temp matches 4 if score #other_team temp matches 15 run scoreboard players add #other_team temp 1

execute if score #boss_team temp matches 2 if score #other_team temp matches 6 run scoreboard players remove #other_team temp 2
execute if score #boss_team temp matches 3 if score #other_team temp matches 9 run scoreboard players remove #other_team temp 2
execute if score #boss_team temp matches 4 if score #other_team temp matches 12 run scoreboard players remove #other_team temp 2
execute if score #boss_team temp matches 5 if score #other_team temp matches 15 run scoreboard players remove #other_team temp 2

execute if score #boss_team temp matches 2 if score #other_team temp matches 7 run scoreboard players remove #other_team temp 1
execute if score #boss_team temp matches 3 if score #other_team temp matches 10 run scoreboard players remove #other_team temp 1
execute if score #boss_team temp matches 4 if score #other_team temp matches 13 run scoreboard players remove #other_team temp 1
execute if score #boss_team temp matches 5 if score #other_team temp matches 16 run scoreboard players remove #other_team temp 1

scoreboard players add #other_team temp 1
scoreboard players operation #other_team temp -= #boss_team temp

execute store result storage minecraft:temp temp.command double 1 run scoreboard players get #other_team temp
function wallwar:boss/command_a with storage minecraft:temp temp

