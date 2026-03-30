
$execute store result score #temp temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:$(ench)"
$execute store result entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:$(ench)" int 1 run scoreboard players add #temp temp 1
$tellraw @s [{"translate": "此物品的 $(name) 提升到了 ","color": "red"},{"score": {"name": "#temp","objective": "temp"}},{"translate": " 级！"}]