
execute unless score @s tid = build_ocean tid run return fail

#execute at @s if entity @s[team=red] if entity @a[distance=0.1..8,team=!red] run return fail
#execute at @s if entity @s[team=blue] if entity @a[distance=0.1..8,team=!blue] run return fail
#execute at @s if entity @s[team=yellow] if entity @a[distance=0.1..8,team=!yellow] run return fail
#execute at @s if entity @s[team=green] if entity @a[distance=0.1..8,team=!green] run return fail

item replace entity 0-0-0-0-1 container.0 from entity @s armor.feet
execute unless data entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:depth_strider" run data modify entity 0-0-0-0-1 item.components."minecraft:enchantments"."minecraft:depth_strider" set value 1
item replace entity @s armor.feet from entity 0-0-0-0-1 container.0


