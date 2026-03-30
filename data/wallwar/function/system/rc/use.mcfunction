

scoreboard players reset @s rc
execute if items entity @s weapon.* carrot_on_a_stick[custom_data~{"teamup":1b}] run function wallwar:system/random_teamup/choose/confirm
