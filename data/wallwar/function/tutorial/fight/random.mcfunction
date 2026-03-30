
clear @s

item replace entity @s armor.head with diamond_helmet[enchantments={protection:1}]
item replace entity @s armor.chest with diamond_chestplate[enchantments={protection:2}]
item replace entity @s armor.legs with diamond_leggings[enchantments={protection:2}]
item replace entity @s armor.feet with diamond_boots[enchantments={protection:1}]

give @s diamond_sword[enchantments={"sharpness": 5,"bigkiller": 3,"vanishing_ench": 1},custom_name={"translate":"杀戮","italic": false,"color": "dark_red","bold": true},lore=[{"translate":"BOSS专属武器","italic": false,"color": "red"},{"translate":"*星芒一闪身随至，铁幕未落首已飞。","italic": false,"color": "gray"},{"translate":"","italic": false,"color": "dark_green"},{"translate":"在主手时：","italic": false,"color": "gray"},{"translate":" 7 攻击伤害","italic": false,"color": "dark_green"},{"translate":" 1.8 攻击速度","italic": false,"color": "dark_green"},{"translate":"","italic": false,"color": "dark_green"},{"translate":"手持时：","italic": false,"color": "gray"},{"translate":"+20% 移动速度","italic": false,"color": "blue"}],attribute_modifiers=[{"id": "diamond_sword","type": "attack_damage","amount": 6,"operation": "add_value","slot": "mainhand"},{"id": "diamond_sword","type": "attack_speed","amount": -2.2,"operation": "add_value","slot": "mainhand"},{"id": "diamond_sword","type": "movement_speed","amount": 0.1,"operation": "add_multiplied_base","slot": "hand"}],max_damage=32767]
give @s iron_axe[enchantments={sharpness:1}]
give @s cobblestone[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}] 64
give @s cooked_beef 16
give @s golden_apple[food={"can_always_eat": true,"nutrition": 4,"saturation": 6},consumable={consume_seconds:1.4,"on_consume_effects":[{"type": "apply_effects","effects": [{"id": "absorption","duration": 2400,"amplifier": 0},{"id": "regeneration","duration": 140,"amplifier": 1}]}]}] 7

give @s diamond_pickaxe[can_break={blocks:"cobblestone"}]


spreadplayers -48 29 10 20 false @s
