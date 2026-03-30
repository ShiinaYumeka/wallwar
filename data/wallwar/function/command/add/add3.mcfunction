
$execute unless items entity 0-0-0-0-1 container.0 *[enchantments~[{enchantments:"minecraft:$(ench)"}]] run return run data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:$(ench)":1}
$execute store result score #temp temp run data get entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:$(ench)"
$execute store result entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:$(ench)" int 1 run scoreboard players add #temp temp 1


#scoreboard players reset @s kill_player
#scoreboard players set #temp temp 1
