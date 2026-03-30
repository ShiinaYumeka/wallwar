
function wallwar:command/add/upgrade/find2 with storage minecraft:temp temp.temp[0]
data remove storage minecraft:temp temp.temp[0]
execute if data storage minecraft:temp temp.temp[0] run function wallwar:command/add/upgrade/find
