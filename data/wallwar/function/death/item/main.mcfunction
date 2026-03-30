
clear @s lantern[custom_data~{lantern_remove:2b}]
effect give @s speed 10 2 true
effect give @s instant_health 1 0 true

item replace entity 0-0-0-0-1 container.0 with yellow_bundle[item_name={text:"灵魂容器","color":"yellow"}]
execute as @e[distance=..3,type=item] run function wallwar:death/item/loop
item replace entity @s container.17 from entity 0-0-0-0-1 container.0
