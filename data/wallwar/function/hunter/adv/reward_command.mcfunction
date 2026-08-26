
execute unless score #Hunter_MODE time matches 1.. run return fail
execute unless entity @s[team=green] run return fail
give @s minecraft:command_block 1
tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"selector":"@s","color":"green"},{"translate":" 获得了命令方块！","color":"white"}]
