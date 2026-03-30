


forceload remove all
forceload add ~ ~ ~ ~

tp @s ~ ~ ~ 0 0

worldborder center ~ ~

worldborder set 599
worldborder damage buffer 0
worldborder damage amount 1

worldborder warning distance 0

setworldspawn ~ 253 ~
gamerule respawn_radius 0

fill ~15 250 ~15 ~-15 254 ~-15 birch_planks
fill ~13 250 ~13 ~-13 250 ~-13 glass
fill ~14 251 ~14 ~-14 254 ~-14 air
execute positioned ~-6 ~ ~ run fill ~1 251 ~1 ~-1 251 ~-1 smoker
execute positioned ~6 ~ ~ run fill ~1 251 ~1 ~-1 251 ~-1 blast_furnace
fill ~1 251 ~1 ~-1 251 ~-1 crafting_table
fill ~5 ~ ~5 ~-5 ~ ~-5 glowstone

#setblock ~ 252 ~15


fill ~5 ~1 ~5 ~-5 ~5 ~-5 air

fill ~5 300 ~5 ~-5 300 ~-5 air


fill ~2 ~ ~2 ~4 ~-1 ~4 red_wool
spawnpoint @a[team=red] ~3 ~2 ~3
fill ~2 ~ ~-2 ~4 ~-1 ~-4 light_blue_wool
spawnpoint @a[team=blue] ~3 ~2 ~-3
fill ~-2 ~ ~-2 ~-4 ~-1 ~-4 lime_wool
spawnpoint @a[team=green] ~-3 ~2 ~-3
fill ~-2 ~ ~2 ~-4 ~-1 ~4 yellow_wool
spawnpoint @a[team=yellow] ~-3 ~2 ~3

fill ~15 257 ~15 ~-15 257 ~-15 air


forceload add ~ ~300 ~ ~-300
fill ~-1 -63 ~300 ~-1 -20 ~-300 minecraft:bedrock
fill ~-1 -19 ~300 ~-1 20 ~-300 minecraft:bedrock
fill ~-1 21 ~300 ~-1 60 ~-300 minecraft:bedrock
fill ~-1 61 ~300 ~-1 100 ~-300 minecraft:bedrock
fill ~-1 101 ~300 ~-1 140 ~-300 minecraft:bedrock
fill ~-1 141 ~300 ~-1 180 ~-300 minecraft:bedrock
fill ~-1 181 ~300 ~-1 210 ~-300 minecraft:bedrock

fill ~1 -63 ~300 ~1 -20 ~-300 minecraft:bedrock
fill ~1 -19 ~300 ~1 20 ~-300 minecraft:bedrock
fill ~1 21 ~300 ~1 60 ~-300 minecraft:bedrock
fill ~1 61 ~300 ~1 100 ~-300 minecraft:bedrock
fill ~1 101 ~300 ~1 140 ~-300 minecraft:bedrock
fill ~1 141 ~300 ~1 180 ~-300 minecraft:bedrock
fill ~1 181 ~300 ~1 210 ~-300 minecraft:bedrock

fill ~ -63 ~300 ~ -20 ~-300 minecraft:bedrock
fill ~ -19 ~300 ~ 20 ~-300 minecraft:bedrock
fill ~ 21 ~300 ~ 60 ~-300 minecraft:bedrock
fill ~ 61 ~300 ~ 100 ~-300 minecraft:bedrock
fill ~ 101 ~300 ~ 140 ~-300 minecraft:bedrock
fill ~ 141 ~300 ~ 180 ~-300 minecraft:bedrock
fill ~ 181 ~300 ~ 210 ~-300 minecraft:bedrock
forceload remove ~ ~300 ~ ~-300
forceload add ~ ~ ~ ~

execute if score #BOSS_MODE time matches 1.. run return fail
forceload add ~300 ~ ~-300 ~
fill ~300 -63 ~ ~-300 -20 ~ minecraft:bedrock
fill ~300 -19 ~ ~-300 20 ~ minecraft:bedrock
fill ~300 21 ~ ~-300 60 ~ minecraft:bedrock
fill ~300 61 ~ ~-300 100 ~ minecraft:bedrock
fill ~300 101 ~ ~-300 140 ~ minecraft:bedrock
fill ~300 141 ~ ~-300 180 ~ minecraft:bedrock
fill ~300 181 ~ ~-300 210 ~ minecraft:bedrock

fill ~300 -63 ~1 ~-300 -20 ~1 minecraft:bedrock
fill ~300 -19 ~1 ~-300 20 ~1 minecraft:bedrock
fill ~300 21 ~1 ~-300 60 ~1 minecraft:bedrock
fill ~300 61 ~1 ~-300 100 ~1 minecraft:bedrock
fill ~300 101 ~1 ~-300 140 ~1 minecraft:bedrock
fill ~300 141 ~1 ~-300 180 ~1 minecraft:bedrock
fill ~300 181 ~1 ~-300 210 ~1 minecraft:bedrock

fill ~300 -63 ~-1 ~-300 -20 ~-1 minecraft:bedrock
fill ~300 -19 ~-1 ~-300 20 ~-1 minecraft:bedrock
fill ~300 21 ~-1 ~-300 60 ~-1 minecraft:bedrock
fill ~300 61 ~-1 ~-300 100 ~-1 minecraft:bedrock
fill ~300 101 ~-1 ~-300 140 ~-1 minecraft:bedrock
fill ~300 141 ~-1 ~-300 180 ~-1 minecraft:bedrock
fill ~300 181 ~-1 ~-300 210 ~-1 minecraft:bedrock
forceload remove ~300 ~ ~-300 ~

forceload add ~ ~ ~ ~




#
