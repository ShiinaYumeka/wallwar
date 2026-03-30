
item replace entity 0-0-0-0-1 container.0 from entity @s armor.head
function wallwar:command/ench with storage minecraft:temp temp
execute run data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:mending":1,"unbreaking":4,vanishing_ench:1}
data modify entity 0-0-0-0-1 item.components."minecraft:damage" set value 1
item replace entity @s armor.head from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.chest
function wallwar:command/ench with storage minecraft:temp temp
execute run data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:mending":1,"unbreaking":4,vanishing_ench:1}
data modify entity 0-0-0-0-1 item.components."minecraft:damage" set value 1
item replace entity @s armor.chest from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.legs
function wallwar:command/ench with storage minecraft:temp temp
execute run data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:mending":1,"unbreaking":4,vanishing_ench:1}
data modify entity 0-0-0-0-1 item.components."minecraft:damage" set value 1
item replace entity @s armor.legs from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.feet
function wallwar:command/ench with storage minecraft:temp temp
execute run data modify entity 0-0-0-0-1 item.components."minecraft:enchantments" merge value {"minecraft:mending":1,"unbreaking":4,vanishing_ench:1}
data modify entity 0-0-0-0-1 item.components."minecraft:damage" set value 1
item replace entity @s armor.feet from entity 0-0-0-0-1 container.0