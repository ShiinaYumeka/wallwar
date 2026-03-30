particle soul_fire_flame ~ ~ ~ ^ ^ ^1000000 0.0000003 0 normal @a
execute if score #fire_circle temp matches 5.. run particle flame ~ ~-0.3 ~ ^ ^300000 ^1000000 0.0000002 0 normal @a
execute if score #fire_circle temp matches 10.. run particle flame ~ ~0.3 ~ ^ ^-300000 ^1000000 0.0000004 0 normal @a
scoreboard players add #par temp 1
execute if score #par temp matches ..90 rotated ~4 0 run function wallwar:armor/par
