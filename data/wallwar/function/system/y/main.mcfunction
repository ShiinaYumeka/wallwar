

scoreboard players reset #lowY time
execute if score #Hunter_MODE time matches 1.. run return fail

execute as 0-0-0-0-1 if entity @s[tag=event_water] as @a[tag=FIGHT,gamemode=!spectator,team=!sp] run function wallwar:event/water/main

execute unless score #Hunter_MODE time matches 1.. run function wallwar:system/y/test

execute as @e[type=#boat] on passengers if entity @s[type=villager] run function wallwar:system/noboat
execute as @e[type=happy_ghast] at @s if entity @s[y=220,dy=100] run function wallwar:system/happy
execute as @e[tag=summoner_death] if entity @s[nbt={PortalCooldown:0}] run kill @s
