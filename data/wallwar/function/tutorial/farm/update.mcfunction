
execute unless items entity @s weapon.mainhand #hoes run return run title @s title "这不是一个锄头"

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.mainhand
data modify entity 0-0-0-0-1 item.components."minecraft:can_break".predicates set value [{blocks:"#minecraft:maintains_farmland"}]
item replace entity @s weapon.mainhand from entity 0-0-0-0-1 container.0
