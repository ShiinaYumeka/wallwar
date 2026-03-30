
tag @s add wither_pickaxe
tag @s add wither_man
tellraw @a [{"translate": "<声音> ","color": "gray"},{"selector": "@s"},{"translate": " 成为了凋灵的血祭品"}]

scoreboard players set @s wither_armor 10

effect give @s invisibility infinite 0 true

item replace entity @s armor.feet with leather_boots[attribute_modifiers=[{id:"leather_boot",amount:3,operation:"add_value",type:"armor",slot:"feet"}],enchantments={binding_curse:1,vanishing_curse:1},dyed_color=[0,0,0],unbreakable={},max_damage=9999]

item replace entity @s armor.legs with leather_leggings[attribute_modifiers=[{id:"leather_leggings",amount:6,operation:"add_value",type:"armor",slot:"legs"}],enchantments={binding_curse:1,vanishing_curse:1},dyed_color=[0,0,0],unbreakable={},max_damage=9999]

item replace entity @s armor.chest with leather_chestplate[attribute_modifiers=[{id:"leather_chest",amount:8,operation:"add_value",type:"armor",slot:"chest"}],enchantments={binding_curse:1,vanishing_curse:1},dyed_color=[0,0,0],unbreakable={},max_damage=9999]

item replace entity @s armor.head with wither_skeleton_skull[attribute_modifiers=[{id:"leather_head",amount:3,operation:"add_value",type:"armor",slot:"head"}],enchantments={protection:7,binding_curse:1,vanishing_curse:1},unbreakable={}]

give @s stone_sword[unbreakable={},custom_name={"translate": "凋灵骷髅佩剑","color": "dark_gray","italic": false},enchantments={vanishing_ench:1,wither_:3,sharpness:5}]