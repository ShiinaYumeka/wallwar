
tag @a[team=blue] add lowY

function wallwar:system/wall/yellow_green
function wallwar:system/wall/red_yellow

forceload add ~300 ~ ~ ~
fill ~300 -63 ~-1 ~1 0 ~-1 iron_ore replace bedrock
fill ~300 1 ~-1 ~1 60 ~-1 iron_ore replace bedrock
fill ~300 61 ~-1 ~1 120 ~-1 iron_ore replace bedrock
fill ~300 121 ~-1 ~1 180 ~-1 iron_ore replace bedrock
fill ~300 181 ~-1 ~1 210 ~-1 iron_ore replace bedrock
forceload remove ~300 ~ ~ ~

forceload add ~ ~ ~ ~-300
fill ~1 -63 ~-1 ~1 0 ~-300 minecraft:iron_ore replace bedrock
fill ~1 1 ~-1 ~1 60 ~-300 minecraft:iron_ore replace bedrock
fill ~1 61 ~-1 ~1 120 ~-300 minecraft:iron_ore replace bedrock
fill ~1 121 ~-1 ~1 180 ~-300 minecraft:iron_ore replace bedrock
fill ~1 181 ~-1 ~1 210 ~-300 minecraft:iron_ore replace bedrock
forceload remove ~ ~ ~ ~-300

forceload add ~ ~ ~ ~
