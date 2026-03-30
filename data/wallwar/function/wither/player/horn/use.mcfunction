
scoreboard players reset @s wither_horn_use
execute unless entity @s[tag=wither_user] run return fail
execute unless items entity @s weapon.* goat_horn[custom_data={wither_player_horn:1b}] run return fail


effect give @s absorption 120 1 false
effect give @s speed 180 0 false
effect give @s slowness 5 9 true
effect give @s regeneration 5 2 false

effect give @a[tag=wither_man,distance=..32] absorption 120 1 false
effect give @a[tag=wither_man,distance=..32] speed 180 0 false
effect give @a[tag=wither_man,distance=..32] regeneration 5 2 false

function wallwar:wither/player/horn/fix

execute if score #BOSS_MODE time matches 1.. run effect give @a[tag=wither_man] speed 15 1 true
