
execute store result score #temp temp run attribute @s minecraft:max_health get 1
scoreboard players operation #temp temp /= 2 const
execute if score @s HP >= #temp temp run return fail

scoreboard players operation @s konpaku /= 2 const
execute store result storage minecraft:temp temp.temp int 1 run scoreboard players get @s konpaku

attribute @s max_health modifier remove command2_boss
function wallwar:boss/command2/health with storage minecraft:temp temp

effect clear @s

effect give @s resistance 1 4 true
effect give @s instant_health 1 0 true
effect give @s absorption 10 0 true
effect give @s fire_resistance 60 0 true
effect give @s[tag=!no_nightvision] night_vision infinite 0 true

execute at @s run playsound item.totem.use player @a ~ ~ ~
execute at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 1 200 force


tellraw @a [{"selector":"@s"},{text:"的“魄”数量为："},{score:{name:"@s",objective:"konpaku"}}]
