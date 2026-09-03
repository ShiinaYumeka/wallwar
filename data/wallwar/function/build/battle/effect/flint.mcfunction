

execute unless score @s tid = #temp tid run return run attribute @s attack_speed modifier remove building_battle2

execute if items entity @s armor.* #enchantable/equippable[enchantments~[{enchantments:"#minecraft:tooltip_order"}]] run return run attribute @s attack_speed modifier remove building_battle2

attribute @s attack_speed modifier add building_battle2 0.2 add_value

effect give @s resistance 11 1