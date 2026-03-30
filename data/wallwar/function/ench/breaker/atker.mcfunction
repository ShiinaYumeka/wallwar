
execute if entity @s[type=player] run return run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:breaker" 2
execute if entity @s[type=!player] run return run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:breaker" 2
