
$execute unless items entity 0-0-0-0-1 container.0 *[enchantments~[{enchantments:"minecraft:$(ench)"}]] run tellraw @s [{"translate": "此物品新增了 $(name) ","color": "red"}]
$execute unless items entity 0-0-0-0-1 container.0 *[enchantments~[{enchantments:"minecraft:$(ench)"}]] run return run data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:$(ench)":1}
$execute store result score #temp temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:$(ench)"
$execute if score #temp temp matches $(max).. run return run tellraw @s [{"translate": "$(name) 强化已经达到满级","color": "red"}]
$execute store result entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:$(ench)" int 1 run scoreboard players add #temp temp 1
$tellraw @s [{"translate": "此物品的 $(name) 提升到了 ","color": "red"},{"score": {"name": "#temp","objective": "temp"}},{"translate": " 级！"}]

#scoreboard players reset @s kill_player
#scoreboard players set #temp temp 1
