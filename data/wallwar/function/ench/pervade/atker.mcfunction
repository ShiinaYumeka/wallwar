
execute if entity @s[type=!player] run return run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:pervade" 2

execute if items entity @s weapon.mainhand bow run return run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:pervade" 2
execute if items entity @s weapon.offhand bow run return run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:pervade" 2


return run data get entity @s Inventory[{id:"minecraft:bow"}].components."minecraft:enchantments"."minecraft:pervade" 2
