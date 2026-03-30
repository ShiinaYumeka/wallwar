

execute unless score @s tid = #temp tid run return run attribute @s armor_toughness modifier remove building_battle2

execute if items entity @s armor.* #enchantable/equippable[enchantments~[{enchantments:"#minecraft:tooltip_order"}]] run return run attribute @s armor_toughness modifier remove building_battle2

attribute @s armor_toughness modifier add building_battle2 2 add_value
execute unless score #wither_no_use2 time matches 1.. run effect give @s resistance 11 1
execute if score #wither_no_use2 time matches 1.. run effect give @s resistance 11 0