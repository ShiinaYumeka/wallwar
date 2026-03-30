
execute unless entity @s[team=blue] run return fail

effect give @s strength 11 1 false
effect give @s speed 11 1 false
execute if entity @s[tag=summoner_death] run data modify entity @s PortalCooldown set value 1200

scoreboard players set #flag_glow temp 1