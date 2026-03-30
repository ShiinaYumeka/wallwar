
execute if score GAME_PRO time matches 5.. run return run tellraw @s [{"translate": "死斗中无法使用","color": "red"}]

data modify storage minecraft:temp temp set value {}
scoreboard players operation #temp kill_player = @s kill_player
execute store result storage minecraft:temp temp.1 int 1 run scoreboard players get GAME time
execute store result storage minecraft:temp temp.2 int 1 run scoreboard players get #temp kill_player
#data modify storage minecraft:temp temp.1 set from entity @s SelectedItem.components."minecraft:written_book_content".title1].raw

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.offhand
scoreboard players reset #temp temp
execute if score @s kill_player matches 1.. if data entity @s SelectedItem.components."minecraft:written_book_content".title{raw:"砍倒"} run function wallwar:command/noench/2 with storage minecraft:temp temp
scoreboard players add #temp kill_player 1
execute store result storage minecraft:temp temp.2 int 1 run scoreboard players get #temp kill_player
execute if score @s kill_player matches 1.. if data entity @s SelectedItem.components."minecraft:written_book_content".title{raw:"凌弱"} run function wallwar:command/noench/3 with storage minecraft:temp temp
execute if score @s kill_player matches 1.. if data entity @s SelectedItem.components."minecraft:written_book_content".title{raw:"攻坚"} run function wallwar:command/noench/4 with storage minecraft:temp temp
execute if data entity @s SelectedItem.components."minecraft:written_book_content".title{raw:"锋利"} run function wallwar:command/noench/1
execute if data entity @s SelectedItem.components."minecraft:written_book_content".title{raw:"保护"} run function wallwar:command/noench/5
execute unless score #temp temp matches 1.. run function wallwar:command/noench/1
execute unless score #temp temp matches 1.. run return fail
item replace entity @s weapon.offhand from entity 0-0-0-0-1 container.0

item replace entity @s weapon.mainhand with air

scoreboard players remove #temp kill_player 1
execute store result storage minecraft:temp temp.2 int 1 run scoreboard players get #temp kill_player
scoreboard players reset #temp kill_player
function wallwar:command/noench/hp with storage minecraft:temp temp

return 1