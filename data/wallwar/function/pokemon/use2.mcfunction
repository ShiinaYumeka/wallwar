


execute if entity @s[tag=summoner_death] run data modify entity @s PortalCooldown set value 2400
tag @s remove summoner
tag @s remove new
tag @s remove pokemon_target

function wallwar:system/team/join
