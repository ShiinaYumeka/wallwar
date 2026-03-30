
execute unless items entity 0-0-0-0-1 container.0 *[enchantments~[{enchantments:"breaker"}]] run return fail
data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:sharpness":4}
data modify storage minecraft:temp temp.2 set value 1
scoreboard players set #temp temp 1