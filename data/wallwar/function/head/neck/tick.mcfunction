
scoreboard players add @s dragon_neck 1
execute if score @s dragon_neck matches ..3599 run return run function wallwar:head/neck/glint_off
execute unless items entity @s weapon.offhand yellow_dye[enchantment_glint_override=true] run function wallwar:head/neck/glint_on

scoreboard players operation #neck temp = @s dragon_neck
scoreboard players remove #neck temp 3600
scoreboard players operation #neck temp %= 1200 const
execute if score #neck temp matches 0 run function wallwar:head/neck/pulse
