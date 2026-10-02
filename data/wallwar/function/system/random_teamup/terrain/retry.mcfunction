tellraw @s {text:"这块地形已被选择或编号无效，请重新选择。",color:"red"}
scoreboard players set @s ww_terrain 0
scoreboard players enable @s ww_terrain
function wallwar:system/random_teamup/terrain/menu
