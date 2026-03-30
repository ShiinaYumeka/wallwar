

#clear @s command_block_minecart
#loot give @s loot wallwar:boss/command

execute if entity @a[tag=boss_command2_user] run function wallwar:boss/command/fail

scoreboard players display name abc display

scoreboard players display name command_timer display {"translate": "存续","color": "light_purple","bold": true}
scoreboard players display numberformat command_timer display fixed {"translate": "解析中","color": "white"}
scoreboard players reset @s command_block_give
tag @s add boss_command_user
tag @s add boss_command_user_no
schedule function wallwar:boss/command/start_warn 300s replace
