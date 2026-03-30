
execute unless items entity @s weapon.mainhand #pickaxes run return run title @s title "这不是一个镐子"

item replace entity 0-0-0-0-1 container.0 from entity @s weapon.mainhand
data modify entity 0-0-0-0-1 item.components."minecraft:can_break".predicates set value [{blocks:"#minecraft:silk_pickaxe"}]
item replace entity @s weapon.mainhand from entity 0-0-0-0-1 container.0
