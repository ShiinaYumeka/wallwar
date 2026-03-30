
give @a[tag=boss_command_user] command_block[enchantments={vanishing_ench:1}] 1
tellraw @a[tag=boss_command_user] {"translate": "凡献祭者必得十倍报，历劫轮回者坐拥星河（已解析完成）"}

tag @a remove boss_command_user_no
scoreboard players set #command_timer time 6000
scoreboard players display name command_timer display {"translate": "存续","color": "light_purple","bold": true}
scoreboard players display numberformat command_timer display styled {"color": "aqua"}
