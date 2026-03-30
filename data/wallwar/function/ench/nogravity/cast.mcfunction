
tag @s remove arrow_nogravity
data modify entity @s NoGravity set value true
data modify entity @s damage set value 1.0
data modify entity @s crit set value false

execute store result entity @s Motion[0] double 0.000001 run data get entity @s Motion[0] 2000000
execute store result entity @s Motion[1] double 0.000001 run data get entity @s Motion[1] 2000000
execute store result entity @s Motion[2] double 0.000001 run data get entity @s Motion[2] 2000000

#particle end_rod ^ ^ ^1 0 1 0 0.1 0 normal
#particle end_rod ^ ^ ^1 1 0 0 0.1 0 normal
#particle end_rod ^ ^ ^1 0 -1 0 0.1 0 normal
#particle end_rod ^ ^ ^1 -1 0 0 0.1 0 normal
