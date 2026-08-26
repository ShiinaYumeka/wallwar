
execute if dimension minecraft:the_nether store success score #spread hunter_temp run spreadplayers ~ ~ 1 200 under 127 false @a[tag=hunter_self,limit=1]
execute unless dimension minecraft:the_nether store success score #spread hunter_temp run spreadplayers ~ ~ 1 200 under 319 false @a[tag=hunter_self,limit=1]
execute unless score #spread hunter_temp matches 1 run tp @a[tag=hunter_self,limit=1] @s
