scoreboard players set #ww_phase time 3
scoreboard players set Teams temp 4
execute unless entity @a[tag=ww_participant,scores={tid=0}] run return run function wallwar:system/random_teamup/terrain/finish
tellraw @a {text:"地形选择完成；开始按地形选择的相反顺序选队员（4 → 3 → 2 → 1）。",color:"gold"}
execute as @a[tag=ww_captain,scores={ww_order=4}] run function wallwar:system/random_teamup/choose/give
