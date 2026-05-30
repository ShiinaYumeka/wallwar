
item replace entity @s armor.head with copper_helmet
item replace entity @s armor.chest with copper_chestplate
item replace entity @s armor.legs with copper_leggings
item replace entity @s armor.feet with copper_boots
give @s copper_pickaxe
give @s copper_axe
give @s copper_shovel
give @s copper_hoe
give @s shears

execute unless score #URF_MODE time matches 1.. run function wallwar:system/item/starter/prompt