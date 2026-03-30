
execute unless entity @a[distance=..0.5] run return fail

particle firework ~ ~ ~ 0.1 0.1 0.1 0.3 40 normal
playsound block.beacon.deactivate player @a ~ ~ ~ 1 1 1

weather clear

kill @s
