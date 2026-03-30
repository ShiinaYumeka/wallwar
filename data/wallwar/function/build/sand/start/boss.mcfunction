
#execute if score build_sand tid matches 1 at 0-0-0-0-1 run function wallwar:build/sand/start/blue
#execute if score build_sand tid matches 4 at 0-0-0-0-1 run function wallwar:build/sand/start/red
#execute if score build_sand tid matches 2 at 0-0-0-0-1 run function wallwar:build/sand/start/green
#execute if score build_sand tid matches 3 at 0-0-0-0-1 run function wallwar:build/sand/start/yellow

execute if score build_sand tid matches 1 run tag @a[team=blue] add lowY
execute if score build_sand tid matches 4 run tag @a[team=red] add lowY
execute if score build_sand tid matches 2 run tag @a[team=green] add lowY
execute if score build_sand tid matches 3 run tag @a[team=yellow] add lowY

forceload add ~ ~300 ~ ~
fill ~1 -63 ~300 ~1 0 ~1 minecraft:iron_ore replace bedrock
fill ~1 1 ~300 ~1 60 ~1 minecraft:iron_ore replace bedrock
fill ~1 61 ~300 ~1 120 ~1 minecraft:iron_ore replace bedrock
fill ~1 121 ~300 ~1 180 ~1 minecraft:iron_ore replace bedrock
fill ~1 181 ~300 ~1 210 ~1 minecraft:iron_ore replace bedrock

fill ~-1 -63 ~300 ~-1 0 ~1 minecraft:iron_ore replace bedrock
fill ~-1 1 ~300 ~-1 60 ~1 minecraft:iron_ore replace bedrock
fill ~-1 61 ~300 ~-1 120 ~1 minecraft:iron_ore replace bedrock
fill ~-1 121 ~300 ~-1 180 ~1 minecraft:iron_ore replace bedrock
fill ~-1 181 ~300 ~-1 210 ~1 minecraft:iron_ore replace bedrock
forceload remove ~ ~300 ~ ~

forceload add ~ ~ ~ ~-300
fill ~1 -63 ~-1 ~1 0 ~-300 minecraft:iron_ore replace bedrock
fill ~1 1 ~-1 ~1 60 ~-300 minecraft:iron_ore replace bedrock
fill ~1 61 ~-1 ~1 120 ~-300 minecraft:iron_ore replace bedrock
fill ~1 121 ~-1 ~1 180 ~-300 minecraft:iron_ore replace bedrock
fill ~1 181 ~-1 ~1 210 ~-300 minecraft:iron_ore replace bedrock

fill ~-1 -63 ~-1 ~-1 0 ~-300 minecraft:iron_ore replace bedrock
fill ~-1 1 ~-1 ~-1 60 ~-300 minecraft:iron_ore replace bedrock
fill ~-1 61 ~-1 ~-1 120 ~-300 minecraft:iron_ore replace bedrock
fill ~-1 121 ~-1 ~-1 180 ~-300 minecraft:iron_ore replace bedrock
fill ~-1 181 ~-1 ~-1 210 ~-300 minecraft:iron_ore replace bedrock
forceload remove ~ ~ ~ ~-300

forceload add ~ ~ ~ ~

tag @a remove building_temp

