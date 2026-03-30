
execute if entity @s[team=green] run return fail
effect give @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] glowing 1 0 true
effect give @s[nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] glowing 10 0 true
effect give @s[nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] slowness 10 0 true
tellraw @a[team=green] [{"selector": "@s"},{"translate": "被我方哨塔发现！"}]

scoreboard players set #tower_glow temp 1