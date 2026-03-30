
$data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:cutdown":$(2)}
$tellraw @a [{"translate": "一种腐化的力量沁入了","color": "light_purple"},{"selector": "@s"},{"translate": "的内心，并使他获得了 砍倒（等级$(2)） 的力量","color": "light_purple"}]
execute if score @s kill_player matches 4.. run data modify storage minecraft:temp temp.2 set value 4
scoreboard players reset @s kill_player
scoreboard players set #temp temp 1