
execute if entity @s[tag=soul_guard_hit] run return fail
execute unless score @s kill_entity matches 31.. run return fail
execute if entity @s[team=sp] run return fail
tag @s add soul_guard_hit
scoreboard players remove @s kill_entity 1
