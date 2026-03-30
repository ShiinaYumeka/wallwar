
tag @p[team=red,tag=FIGHT,gamemode=!spectator] add respawn_user
function wallwar:respawn/main
tag @a remove respawn_user
effect clear @s speed
effect clear @s invisibility
effect give @s conduit_power 45 0 true
effect give @s strength 45 0 true
effect give @s absorption 45 4 true

item replace entity @s armor.head with golden_helmet[enchantments={protection:3},attribute_modifiers=[{id:"golden_armor1",type:"armor","amount":3,operation:"add_value",slot:"head"},{id:"golden_armor1",type:"armor_toughness","amount":2,operation:"add_value",slot:"head"}]]
item replace entity @s armor.chest with golden_chestplate[enchantments={protection:3},attribute_modifiers=[{id:"golden_armor2",type:"armor","amount":8,operation:"add_value",slot:"chest"},{id:"golden_armor2",type:"armor_toughness","amount":2,operation:"add_value",slot:"chest"}]]
item replace entity @s armor.legs with golden_leggings[enchantments={protection:3},attribute_modifiers=[{id:"golden_armor3",type:"armor","amount":6,operation:"add_value",slot:"legs"},{id:"golden_armor3",type:"armor_toughness","amount":2,operation:"add_value",slot:"legs"}]]
item replace entity @s armor.feet with golden_boots[enchantments={protection:3},attribute_modifiers=[{id:"golden_armor4",type:"armor","amount":3,operation:"add_value",slot:"feet"},{id:"golden_armor4",type:"armor_toughness","amount":2,operation:"add_value",slot:"feet"}]]

give @s golden_sword[enchantments={sharpness:10}]
give @s golden_axe[enchantments={sharpness:6}]
give @s bread 16
give @s golden_apple[food={"can_always_eat": true,"nutrition": 4,"saturation": 6},consumable={consume_seconds:1.4,"on_consume_effects":[{"type": "apply_effects","effects": [{"id": "absorption","duration": 2400,"amplifier": 0},{"id": "regeneration","duration": 140,"amplifier": 1}]}]}] 3
give @s shield
give @s wither_skeleton_skull[enchantments={protection:7}]

