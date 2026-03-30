
data modify entity @s NoGravity set value true
tag @s add arrow_nogravity
schedule function wallwar:ench/nogravity/use 1t append
