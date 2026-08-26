
execute unless score #Hunter_MODE time matches 1.. run return fail
execute unless entity @s[team=green] run return fail
give @s minecraft:chain_command_block 1
give @s minecraft:diamond 32
tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"selector":"@s","color":"green"},{"translate":" 获得了连锁命令方块与钻石！","color":"white"}]
