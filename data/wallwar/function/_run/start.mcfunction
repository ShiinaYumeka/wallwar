execute if score #ww_phase time matches 1..3 run return run tellraw @a {text:"请先完成地形和队员选择。",color:"red"}
#scoreboard players reset @a recipe
execute if score #Hunter_MODE time matches 1.. run return run function wallwar:system/start_hunter
function wallwar:system/start
