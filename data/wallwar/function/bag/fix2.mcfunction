


item replace entity 0-0-0-0-1 container.0 from entity @s armor.head
data remove entity 0-0-0-0-1 item.components."minecraft:damage"
data modify storage minecraft:temp temp set value {ench:"breaking"}
function wallwar:command/add/add3 with storage minecraft:temp temp
item replace entity @s armor.head from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.chest
data remove entity 0-0-0-0-1 item.components."minecraft:damage"
data modify storage minecraft:temp temp set value {ench:"breaking"}
function wallwar:command/add/add3 with storage minecraft:temp temp
item replace entity @s armor.chest from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.legs
data remove entity 0-0-0-0-1 item.components."minecraft:damage"
data modify storage minecraft:temp temp set value {ench:"breaking"}
function wallwar:command/add/add3 with storage minecraft:temp temp
item replace entity @s armor.legs from entity 0-0-0-0-1 container.0

item replace entity 0-0-0-0-1 container.0 from entity @s armor.feet
data remove entity 0-0-0-0-1 item.components."minecraft:damage"
data modify storage minecraft:temp temp set value {ench:"breaking"}
function wallwar:command/add/add3 with storage minecraft:temp temp
item replace entity @s armor.feet from entity 0-0-0-0-1 container.0

