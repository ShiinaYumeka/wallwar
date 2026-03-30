
execute if items entity @s weapon.* #enchantable/durability[enchantments~[{levels:1,enchantments:heavy}]] run return run effect give @s slowness 1 0 true
execute if items entity @s weapon.* #enchantable/durability[enchantments~[{levels:2,enchantments:heavy}]] run return run effect give @s slowness 2 1 true
execute if items entity @s weapon.* #enchantable/durability[enchantments~[{levels:3,enchantments:heavy}]] run return run effect give @s slowness 3 2 true

effect give @s slowness 5 9 true
