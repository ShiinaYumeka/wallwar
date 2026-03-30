


execute store result storage minecraft:temp temp.temp int 1 run scoreboard players get @s konpaku

attribute @s max_health modifier remove command2_boss
function wallwar:boss/command2/health with storage minecraft:temp temp

tellraw @a [{"selector":"@s"},{text:"的“魄”数量为："},{score:{name:"@s",objective:"konpaku"}}]

execute if score @s konpaku matches 20.. run advancement grant @s only wallwar/boss/command2_1
execute if score @s konpaku matches 40.. run advancement grant @s only wallwar/boss/command2_2
execute if score @s konpaku matches 60.. run advancement grant @s only wallwar/boss/command2_3
execute if score @s konpaku matches 80.. run advancement grant @s only wallwar/boss/command2_4
