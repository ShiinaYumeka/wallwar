
execute unless entity @s[type=#minecraft:arrows] run return fail
execute on origin unless score @s kill_entity matches 31.. unless entity @s[tag=soul_power_shot] run return fail
execute on origin unless entity @s[tag=soul_power_shot] run scoreboard players remove @s kill_entity 1
execute on origin run tag @s add soul_power_shot
tag @s add soul_arrow
