
gamemode survival @s
clear @s
tag @s add wither_player
effect give @s absorption infinite 9 true
effect give @s slowness infinite 0 true
effect give @s fire_resistance infinite 1 true

item replace entity @s armor.feet with leather_boots[attribute_modifiers=[{id:"leather_boot",amount:3,operation:"add_value",type:"armor",slot:"feet"}],enchantments={binding_curse:1,vanishing_ench:1},dyed_color=[0,0,0],unbreakable={},max_damage=9999]

item replace entity @s armor.legs with leather_leggings[attribute_modifiers=[{id:"leather_leggings",amount:6,operation:"add_value",type:"armor",slot:"legs"}],enchantments={binding_curse:1,vanishing_ench:1},dyed_color=[0,0,0],unbreakable={},max_damage=9999]

item replace entity @s armor.chest with leather_chestplate[attribute_modifiers=[{id:"leather_chest",amount:8,operation:"add_value",type:"armor",slot:"chest"}],enchantments={binding_curse:1,vanishing_ench:1},dyed_color=[0,0,0],unbreakable={},max_damage=9999]

item replace entity @s armor.head with wither_skeleton_skull[attribute_modifiers=[{id:"leather_head",amount:3,operation:"add_value",type:"armor",slot:"head"}],enchantments={binding_curse:1,wither:1,vanishing_ench:1,protection:7},unbreakable={}]

item replace entity @s weapon.mainhand with stone_sword[unbreakable={},custom_name={"translate": "凋灵骷髅佩剑","color": "dark_gray","italic": false},enchantments={vanishing_ench:1,wither_:3,sharpness:5},custom_data={"wither_player_blade":1b}]

execute at 0-0-0-0-1 positioned ~ 315 ~ run spreadplayers ~ ~ 3 15 under 315 false @s

