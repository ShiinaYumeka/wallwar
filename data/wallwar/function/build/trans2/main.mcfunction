
execute if score #wither_no_use time matches 1.. run return fail
execute unless function wallwar:build/trans2/test run return fail


execute in the_end run forceload add 0 0
execute in the_end run fill 0 0 0 0 1 0 air
clone ^ ^ ^-0.5 ^ ^1 ^-0.5 to the_end 0 0 0 replace

scoreboard players set #trans_glow temp 0
execute as @e[type=item_frame,tag=building_trans,sort=nearest] at @s run function wallwar:build/trans2/send

execute in the_end run forceload remove 0 0

execute if score #trans_glow temp matches 1 run data remove block ^ ^1 ^-0.5 Items

execute if score #trans_glow temp matches 1 run playsound entity.player.teleport block @a ~ ~ ~
