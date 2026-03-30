

execute if entity @a[tag=boss_command_user] run function wallwar:boss/command2/fail
#scoreboard players reset @s konpaku
scoreboard players operation #temp tid = @s tid
execute as @a if score @s tid = #temp tid run tag @s add boss_command2_user

tag @a[tag=boss_command2_user] add boss_command2_user_no

schedule function wallwar:boss/command2/enable 300s replace

scoreboard players display name command_timer display {"translate": "窃魂","color": "green","bold": true}
scoreboard players display numberformat command_timer display fixed {"translate": "解析中","color": "white"}