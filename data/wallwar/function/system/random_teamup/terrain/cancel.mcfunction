execute as @a[tag=chose] run function wallwar:system/random_teamup/choose/leave
clear @a[tag=ww_participant] carrot_on_a_stick[custom_data~{teamup:1b}]
effect clear @a[tag=ww_participant] glowing
tag @a remove leader
tag @a remove choosing
tag @a remove chose
tag @a remove ww_participant
tag @a remove ww_seed
tag @a remove ww_captain
tag @a remove ww_confirmed
tag @a remove ww_turn
tag @a remove ww_ranked
scoreboard players reset * ww_order
scoreboard players reset * ww_ready
scoreboard players reset * ww_terrain
scoreboard players set #ww_phase time 0
scoreboard players set #ww_complete time 0
scoreboard players set Team_main time 0
