

$data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:noench_pro3":$(2)}
$tellraw @a [{"translate": "一种腐化的力量沁入了","color": "light_purple"},{"selector": "@s"},{"translate": "的内心，并使他获得了 凌弱（等级$(2)） 的力量","color": "light_purple"}]


scoreboard players set #temp temp 1