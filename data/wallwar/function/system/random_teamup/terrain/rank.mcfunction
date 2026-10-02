scoreboard players operation @s ww_order = #ww_index temp
tag @s add ww_ranked
tellraw @a [{text:"地形选择第 "},{score:{name:"@s",objective:"ww_order"}},{text:" 位："},{selector:"@s"}]
