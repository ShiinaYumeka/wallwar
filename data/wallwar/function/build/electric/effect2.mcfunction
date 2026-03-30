
#effect give @s instant_damage 1 1 true
damage @s 16.5 lightning_bolt
effect give @s blindness 1 0 true
effect give @s slowness 1 4 true
effect give @s mining_fatigue 3 1 true
effect give @s weakness 11 0 true

tp @s @s

effect give @s[predicate=!electric] wind_charged 15 0

execute at @s run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.05 100

