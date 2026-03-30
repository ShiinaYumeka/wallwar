
execute unless items entity @s weapon.mainhand #axes run return run title @s title "这不是一个斧头"

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.mainhand
data modify entity 0-0-0-0-1 item.components."minecraft:can_break".predicates set value [{blocks:"#minecraft:logs"}]
item replace entity @s weapon.mainhand from entity 0-0-0-0-1 container.0
