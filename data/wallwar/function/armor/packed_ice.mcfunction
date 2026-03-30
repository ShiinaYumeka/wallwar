
execute store result score #fire_circle temp run clear @s blaze_rod 0
scoreboard players set #par temp 0
execute positioned ~ ~1 ~ rotated ~ 0 run function wallwar:armor/par
execute as @e[team=!sp,type=!item,type=!item_frame] run tag @s add packed_ice_target

execute if entity @s[team=red] run tag @e[team=red,tag=packed_ice_target] remove packed_ice_target
execute if entity @s[team=blue] run tag @e[team=blue,tag=packed_ice_target] remove packed_ice_target
execute if entity @s[team=yellow] run tag @e[team=yellow,tag=packed_ice_target] remove packed_ice_target
execute if entity @s[team=green] run tag @e[team=green,tag=packed_ice_target] remove packed_ice_target

execute unless score #fire_circle temp matches 1.. as @e[distance=0.1..4,tag=packed_ice_target] run damage @s 2 in_fire
execute if score #fire_circle temp matches 1 as @e[distance=0.1..4,tag=packed_ice_target] run damage @s 2.5 in_fire
execute if score #fire_circle temp matches 2 as @e[distance=0.1..4,tag=packed_ice_target] run damage @s 3 in_fire
execute if score #fire_circle temp matches 3 as @e[distance=0.1..4,tag=packed_ice_target] run damage @s 3.5 in_fire
execute if score #fire_circle temp matches 4 as @e[distance=0.1..4,tag=packed_ice_target] run damage @s 4 in_fire
execute if score #fire_circle temp matches 5 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 4.5 in_fire
execute if score #fire_circle temp matches 6 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 5 in_fire
execute if score #fire_circle temp matches 7 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 5.5 in_fire
execute if score #fire_circle temp matches 8 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 6 in_fire
execute if score #fire_circle temp matches 9 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 6.5 in_fire
execute if score #fire_circle temp matches 10 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 7 in_fire
execute if score #fire_circle temp matches 11 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 7.5 in_fire
execute if score #fire_circle temp matches 12 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 8 in_fire
execute if score #fire_circle temp matches 13 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 8.5 in_fire
execute if score #fire_circle temp matches 14 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 9 in_fire
execute if score #fire_circle temp matches 15 as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 9.5 in_fire
execute if score #fire_circle temp matches 16.. as @e[distance=0.1..5,tag=packed_ice_target] run damage @s 10 in_fire

tag @e remove packed_ice_target
