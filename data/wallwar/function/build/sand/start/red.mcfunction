
tag @a[team=red] add lowY


function wallwar:system/wall/yellow_green
function wallwar:system/wall/blue_green


forceload add ~ ~300 ~ ~
fill ~1 -63 ~300 ~1 0 ~1 minecraft:iron_ore replace bedrock
fill ~1 1 ~300 ~1 60 ~1 minecraft:iron_ore replace bedrock
fill ~1 61 ~300 ~1 120 ~1 minecraft:iron_ore replace bedrock
fill ~1 121 ~300 ~1 180 ~1 minecraft:iron_ore replace bedrock
fill ~1 181 ~300 ~1 210 ~1 minecraft:iron_ore replace bedrock
forceload remove ~ ~300 ~ ~

forceload add ~300 ~ ~ ~
fill ~300 -63 ~1 ~1 0 ~1 iron_ore replace bedrock
fill ~300 1 ~1 ~1 60 ~1 iron_ore replace bedrock
fill ~300 61 ~1 ~1 120 ~1 iron_ore replace bedrock
fill ~300 121 ~1 ~1 180 ~1 iron_ore replace bedrock
fill ~300 181 ~1 ~1 210 ~1 iron_ore replace bedrock
forceload remove ~300 ~ ~ ~

forceload add ~ ~ ~ ~