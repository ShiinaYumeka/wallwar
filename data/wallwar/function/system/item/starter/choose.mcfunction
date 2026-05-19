
scoreboard players enable @s choose_starter
execute if score @s starter_path matches 1..6 run return run function wallwar:system/item/starter/choose_no
execute if score @s choose_starter matches 1 run function wallwar:system/item/starter/mine
execute if score @s choose_starter matches 2 run function wallwar:system/item/starter/farm
execute if score @s choose_starter matches 3 run function wallwar:system/item/starter/axe
execute if score @s choose_starter matches 4 run function wallwar:system/item/starter/fish
execute if score @s choose_starter matches 5 run function wallwar:system/item/starter/potion
execute if score @s choose_starter matches 6 run function wallwar:system/item/starter/build
scoreboard players reset @s choose_starter
execute unless score @s starter_path matches 1..6 run return fail
tellraw @s ["",{"translate":"[战墙] ","color":"gray"},{"translate":"无效选择，请输入 /trigger choose_starter set <1-6>","color":"yellow"}]
