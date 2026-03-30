

execute unless score @s tid = #temp tid run return run function wallwar:build/battle/effect/leather_clear
execute if items entity @s armor.* #enchantable/equippable run return run function wallwar:build/battle/effect/leather_clear


attribute @s armor modifier add building_battle 20 add_value
attribute @s armor_toughness modifier add building_battle 8 add_value
