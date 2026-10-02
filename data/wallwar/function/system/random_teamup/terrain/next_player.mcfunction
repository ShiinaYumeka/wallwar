tag @a[tag=ww_participant] remove choosing
clear @a[tag=ww_participant] carrot_on_a_stick[custom_data~{teamup:1b}]
execute unless entity @a[tag=ww_participant,scores={tid=0}] run return run function wallwar:system/random_teamup/terrain/finish
scoreboard players remove Teams temp 1
execute if score Teams temp matches ..0 run scoreboard players set Teams temp 4
execute as @a[tag=ww_captain] if score @s ww_order = Teams temp run function wallwar:system/random_teamup/choose/give
