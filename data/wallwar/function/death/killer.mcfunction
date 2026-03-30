

execute if items entity @s container.17 soul_lantern[custom_data~{lantern_remove:2b}] run function wallwar:death/item/main
execute if items entity @s inventory.* lantern[custom_data~{lantern_remove:1b}] at @s run function wallwar:death/killer_1

execute if entity @s[nbt={active_effects:[{id:"minecraft:speed",amplifier:5b}]}] at @s run function wallwar:weapon/swords/konpaku
execute if entity @s[tag=wither_user_kill] at @s run function wallwar:wither/player/kill/use
#execute if entity @s[tag=wither_user_hp] at @s run function wallwar:wither/player/hp/use
execute if entity @s[tag=boss_command2_user,tag=!boss_command2_user_no] at @s run function wallwar:boss/command2/kill

scoreboard objectives setdisplay list kill_player
