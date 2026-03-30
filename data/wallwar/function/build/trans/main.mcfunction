

forceload remove ~ ~
tag @s remove building_trans
execute if score #wither_no_use time matches 1.. run return fail
execute unless function wallwar:build/trans/test at @s run return run tp @s ~ ~ ~ ~90 ~


tag @s add building_trans
forceload add ~ ~
playsound block.stone_button.click_off block @a ~ ~ ~

