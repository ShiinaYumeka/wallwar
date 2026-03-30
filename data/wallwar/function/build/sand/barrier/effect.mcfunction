
execute unless entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run tellraw @a [{"translate":"[警告]: ","color":"white"},{"selector": "@s"},{"translate": "侵扰了图坦卡蒙的安息","color":"white"}]

effect give @s[nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] glowing 300 1 true
effect give @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] glowing 10 1 true
effect give @s slowness 300 0 true
effect give @s mining_fatigue 300 2 true
effect give @s weakness 300 0 true
