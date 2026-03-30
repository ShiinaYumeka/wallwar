
effect clear @s

effect give @s resistance 1 4 true
effect give @s absorption 120 0 true
effect give @s instant_health 1 0 true
effect give @s regeneration 5 1 true
effect give @s[tag=!no_nightvision] night_vision infinite 0 true
xp add @s -20 levels


execute at @s run playsound item.totem.use player @a ~ ~ ~
execute at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 1 200 force

