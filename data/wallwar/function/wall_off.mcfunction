

execute as @e[type=item_frame,tag=building_sand] at @s if entity @s[y=60,dy=260] if score build_sand tid matches 1..4 run return run function wallwar:build/sand/start/main

forceload add ~ ~300 ~ ~
fill ~ -63 ~300 ~ 0 ~1 minecraft:copper_ore
fill ~ 1 ~300 ~ 60 ~1 minecraft:copper_ore
fill ~ 61 ~300 ~ 120 ~1 minecraft:copper_ore
fill ~ 121 ~300 ~ 180 ~1 minecraft:copper_ore
fill ~ 181 ~300 ~ 210 ~1 minecraft:copper_ore

fill ~1 -63 ~300 ~1 0 ~1 minecraft:iron_ore
fill ~1 1 ~300 ~1 60 ~1 minecraft:iron_ore
fill ~1 61 ~300 ~1 120 ~1 minecraft:iron_ore
fill ~1 121 ~300 ~1 180 ~1 minecraft:iron_ore
fill ~1 181 ~300 ~1 210 ~1 minecraft:iron_ore

fill ~-1 -63 ~300 ~-1 0 ~1 minecraft:iron_ore
fill ~-1 1 ~300 ~-1 60 ~1 minecraft:iron_ore
fill ~-1 61 ~300 ~-1 120 ~1 minecraft:iron_ore
fill ~-1 121 ~300 ~-1 180 ~1 minecraft:iron_ore
fill ~-1 181 ~300 ~-1 210 ~1 minecraft:iron_ore


forceload remove ~ ~300 ~ ~

forceload add ~ ~ ~ ~-300
fill ~ -63 ~-1 ~ 0 ~-300 minecraft:copper_ore
fill ~ 1 ~-1 ~ 60 ~-300 minecraft:copper_ore
fill ~ 61 ~-1 ~ 120 ~-300 minecraft:copper_ore
fill ~ 121 ~-1 ~ 180 ~-300 minecraft:copper_ore
fill ~ 181 ~-1 ~ 210 ~-300 minecraft:copper_ore

fill ~1 -63 ~-1 ~1 0 ~-300 minecraft:iron_ore
fill ~1 1 ~-1 ~1 60 ~-300 minecraft:iron_ore
fill ~1 61 ~-1 ~1 120 ~-300 minecraft:iron_ore
fill ~1 121 ~-1 ~1 180 ~-300 minecraft:iron_ore
fill ~1 181 ~-1 ~1 210 ~-300 minecraft:iron_ore

fill ~-1 -63 ~-1 ~-1 0 ~-300 minecraft:iron_ore
fill ~-1 1 ~-1 ~-1 60 ~-300 minecraft:iron_ore
fill ~-1 61 ~-1 ~-1 120 ~-300 minecraft:iron_ore
fill ~-1 121 ~-1 ~-1 180 ~-300 minecraft:iron_ore
fill ~-1 181 ~-1 ~-1 210 ~-300 minecraft:iron_ore
forceload remove ~ ~ ~ ~-300

forceload add ~ ~ ~ ~

execute if score #BOSS_MODE time matches 1.. run return fail
forceload add ~300 ~ ~ ~
fill ~300 -63 ~ ~1 0 ~ minecraft:copper_ore
fill ~300 1 ~ ~1 60 ~ minecraft:copper_ore
fill ~300 61 ~ ~1 120 ~ minecraft:copper_ore
fill ~300 121 ~ ~1 180 ~ minecraft:copper_ore
fill ~300 181 ~ ~1 210 ~ minecraft:copper_ore

fill ~300 -63 ~1 ~1 0 ~1 iron_ore
fill ~300 1 ~1 ~1 60 ~1 iron_ore
fill ~300 61 ~1 ~1 120 ~1 iron_ore
fill ~300 121 ~1 ~1 180 ~1 iron_ore
fill ~300 181 ~1 ~1 210 ~1 iron_ore

fill ~300 -63 ~-1 ~1 0 ~-1 iron_ore
fill ~300 1 ~-1 ~1 60 ~-1 iron_ore
fill ~300 61 ~-1 ~1 120 ~-1 iron_ore
fill ~300 121 ~-1 ~1 180 ~-1 iron_ore
fill ~300 181 ~-1 ~1 210 ~-1 iron_ore
forceload remove ~300 ~ ~ ~

forceload add ~ ~ ~-300 ~
fill ~-1 -63 ~ ~-300 0 ~ minecraft:copper_ore
fill ~-1 1 ~ ~-300 60 ~ minecraft:copper_ore
fill ~-1 61 ~ ~-300 120 ~ minecraft:copper_ore
fill ~-1 121 ~ ~-300 180 ~ minecraft:copper_ore
fill ~-1 181 ~ ~-300 210 ~ minecraft:copper_ore

fill ~-1 -63 ~1 ~-300 0 ~1 minecraft:iron_ore
fill ~-1 1 ~1 ~-300 60 ~1 minecraft:iron_ore
fill ~-1 61 ~1 ~-300 120 ~1 minecraft:iron_ore
fill ~-1 121 ~1 ~-300 180 ~1 minecraft:iron_ore
fill ~-1 181 ~1 ~-300 210 ~1 minecraft:iron_ore

fill ~-1 -63 ~-1 ~-300 0 ~-1 minecraft:iron_ore
fill ~-1 1 ~-1 ~-300 60 ~-1 minecraft:iron_ore
fill ~-1 61 ~-1 ~-300 120 ~-1 minecraft:iron_ore
fill ~-1 121 ~-1 ~-300 180 ~-1 minecraft:iron_ore
fill ~-1 181 ~-1 ~-300 210 ~-1 minecraft:iron_ore
forceload remove ~ ~ ~-300 ~


forceload add ~ ~ ~ ~
