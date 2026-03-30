
data remove entity @s Glowing
execute unless function wallwar:build/tower/test run return fail
execute if score #wither_no_use time matches 1.. run return fail


playsound block.bell.use block @a ~ ~ ~

#effect give @a[gamemode=!spectator] glowing 11 0 true
scoreboard players reset #tower_glow temp
execute positioned ~-96 ~-26 ~-96 as @a[dx=191,dy=30,dz=191,gamemode=!spectator] positioned ~96 ~26 ~96 run function wallwar:build/tower/effect

execute if score #tower_glow temp matches 1 run data modify entity @s Glowing set value 1b
