
$tellraw @s [{"translate": "此物品新增了 $(name) ","color": "red"}]
$data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:$(ench)":$(min)}
