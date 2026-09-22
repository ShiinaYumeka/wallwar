
execute as 0-0-0-0-1 if entity @s[tag=event_armor_damage] run function wallwar:event/armor_damage/main
execute if score GAME_PRO time matches 2 run return run function wallwar:event/main/pick_norm_pro2
function wallwar:event/main/pick_norm
