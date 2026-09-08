
$execute unless items entity @s armor.$(slot) #enchantable/armor run return fail
$execute if items entity @s armor.$(slot) #enchantable/armor[unbreakable] run return fail
$execute if items entity @s armor.$(slot) #enchantable/armor[damage~{durability:{max:50}}] run return run item replace entity @s armor.$(slot) with air

$item replace entity 0-0-0-0-1 container.0 from entity @s armor.$(slot)
execute store result score #damage temp run data get entity 0-0-0-0-1 item.components."minecraft:damage" 1
scoreboard players add #damage temp 50
execute store result entity 0-0-0-0-1 item.components."minecraft:damage" int 1 run scoreboard players get #damage temp
$item replace entity @s armor.$(slot) from entity 0-0-0-0-1 container.0
