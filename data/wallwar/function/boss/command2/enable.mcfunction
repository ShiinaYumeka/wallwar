
execute as @a[tag=boss_command2_user] run attribute @s attack_damage base set 2
tellraw @a[tag=boss_command2_user] {"translate": "【窃魂】已生效"}
tag @a remove boss_command2_user_no
give @p[tag=boss_command2_user] chain_command_block[enchantments={vanishing_ench:1}] 1


scoreboard players display name command_timer display {"translate": "窃魂","color": "green","bold": true}
scoreboard players display numberformat command_timer display styled {"color": "aqua"}
