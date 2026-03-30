
#execute at @s if entity @s[team=red] if entity @a[distance=0.1..8,team=!red] run return fail
#execute at @s if entity @s[team=blue] if entity @a[distance=0.1..8,team=!blue] run return fail
#execute at @s if entity @s[team=yellow] if entity @a[distance=0.1..8,team=!yellow] run return fail
#execute at @s if entity @s[team=green] if entity @a[distance=0.1..8,team=!green] run return fail

effect clear @s poison
effect clear @s weakness
effect clear @s slowness
effect clear @s mining_fatigue
effect clear @s blindness
