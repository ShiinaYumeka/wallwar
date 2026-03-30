
clear @s

item replace entity @s armor.head with diamond_helmet[enchantments={protection:3}]
item replace entity @s armor.chest with diamond_chestplate[enchantments={protection:2}]
item replace entity @s armor.legs with diamond_leggings[enchantments={protection:3}]
item replace entity @s armor.feet with diamond_boots[enchantments={protection:3}]

give @s diamond_sword[enchantments={sharpness:4}]
give @s diamond_axe[enchantments={sharpness:1}]
give @s cobweb[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}] 8
give @s lava_bucket[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}]
give @s water_bucket[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}]
give @s crossbow[enchantments={piercing:3}]
give @s cooked_beef 16
give @s cobblestone[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}] 64
give @s golden_apple[food={"can_always_eat": true,"nutrition": 4,"saturation": 6},consumable={consume_seconds:1.4,"on_consume_effects":[{"type": "apply_effects","effects": [{"id": "absorption","duration": 2400,"amplifier": 0},{"id": "regeneration","duration": 140,"amplifier": 1}]}]}] 7
give @s bow[enchantments={power:3}]
item replace entity @s weapon.offhand with shield
give @s arrow 16
give @s diamond_pickaxe[can_break={blocks:"cobblestone"}]

give @s lava_bucket[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}]
give @s water_bucket[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}]
give @s water_bucket[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}]
give @s water_bucket[can_place_on={blocks:["bricks","cobweb","quartz_block","cobblestone"]}]

spreadplayers -48 29 10 20 false @s
