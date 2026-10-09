scoreboard players set #ww_phase time 4
scoreboard players set #ww_complete time 1
scoreboard players set Team_main time 0
clear @a[tag=ww_participant] carrot_on_a_stick[custom_data~{teamup:1b}]
effect clear @a[tag=ww_participant] glowing
tag @a remove chose
tag @a remove choosing
tag @a remove leader
tellraw @a {text:"地形与队员选择全部完成。",color:"green"}
