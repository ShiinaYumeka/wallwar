

data remove entity @s Glowing
execute unless function wallwar:build/flag/test run return fail
execute if score #wither_no_use time matches 1.. run return fail


playsound block.fire.extinguish block @a ~ ~ ~

#effect give @a[gamemode=!spectator] glowing 11 0 true
scoreboard players reset #flag_glow temp
execute positioned ~-64 ~-17 ~-64 as @e[dx=127,dy=20,dz=127] if data entity @s CustomNameVisible positioned ~64 ~17 ~64 run function wallwar:build/flag/effect

execute if score #flag_glow temp matches 1 run data modify entity @s Glowing set value 1b

