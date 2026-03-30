
give @s command_block[enchantments={vanishing_ench:1}] 1
tellraw @s {"translate": "在绝对轮回中重构资源宇宙的创生与湮灭。（已解构-命令方块）"}
scoreboard players add @s command_block_give 1

execute unless score @s command_block_give matches 5.. run scoreboard players set #command_timer time 6000
execute if score @s command_block_give matches 5.. run scoreboard players set #command_timer time 3600

