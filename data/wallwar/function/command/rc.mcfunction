
scoreboard players reset @s command_book_use
scoreboard players reset #return_book temp

execute if data entity @s Inventory[8].components."minecraft:writable_book_content".pages[2] store success score #return_book temp run function wallwar:command/main

execute if items entity @s weapon.mainhand written_book[custom_data~{"command_book":2b}] run return run function wallwar:command/noench/main

execute unless items entity @s weapon.mainhand written_book[custom_data~{"command_book":1b}] run return fail
execute unless items entity @s weapon.offhand #enchantable/command run return fail
execute if items entity @s weapon.offhand *[enchantments~[{enchantments:"expensive_curse2"}]] run return run effect give @s glowing infinite 1 true

execute store result score @s temp run data get entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw
execute if score @s temp matches 30.. run scoreboard players set @s temp 30

execute unless score @s kill_entity >= @s temp run return run tellraw @s [{"translate": "灵魂数不足，当前灵魂数目：","color": "red"},{"score": {"name": "@s","objective":"kill_entity"}}]


execute if data entity @s equipment.offhand.components."minecraft:enchantments" run function wallwar:command/add/main
execute unless data entity @s equipment.offhand.components."minecraft:enchantments" run function wallwar:command/empty


execute unless score #return_book temp matches 1.. run item replace entity @s weapon.mainhand with air
