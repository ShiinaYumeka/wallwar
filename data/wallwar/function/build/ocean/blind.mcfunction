
execute if score GAME_PRO time matches 5.. run return fail
execute at @s unless block ~ ~ ~ water run return fail
#effect give @s blindness 1 0 false

execute if score @s tid = build_ocean tid run return fail

effect give @s slowness 10 1 false
effect give @s mining_fatigue 10 0 false
