
execute at 0-0-0-0-1 positioned ~-30 264 ~-30 unless entity @s[dx=60,dy=100,dz=60] run function wallwar:system/end/tp
execute if entity @s[tag=end_item_used] run return fail


playsound entity.warden.agitated player @a ~ ~ ~

data modify entity @s Invulnerable set value true
data modify entity @s Glowing set value true
data modify entity @s glow_color_override set value 16711680
scoreboard players set #end time 0

tag @s add end_item_used


