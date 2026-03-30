
title @a title {"translate": "轮回","bold": true,"color": "gray"}

execute if entity @s[team=red] as @a[team=red,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=blue] as @a[team=blue,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=green] as @a[team=green,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=yellow] as @a[team=yellow,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=wither] as @a[team=wither,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give

execute store result score #temp temp if entity @a[tag=FIGHT,gamemode=!spectator,team=!sp]
execute unless score #temp temp matches 6.. run return fail


execute if entity @s[team=red] as @a[team=red,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=blue] as @a[team=blue,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=green] as @a[team=green,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=yellow] as @a[team=yellow,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
execute if entity @s[team=wither] as @a[team=wither,gamemode=spectator,sort=random,limit=1] run function wallwar:wither/skill/player/give
