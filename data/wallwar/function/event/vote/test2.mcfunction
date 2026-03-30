
execute if entity @s[team=red] if entity @a[distance=0.1..,team=red,tag=FIGHT,gamemode=!spectator] run return fail
execute if entity @s[team=blue] if entity @a[distance=0.1..,team=blue,tag=FIGHT,gamemode=!spectator] run return fail
execute if entity @s[team=yellow] if entity @a[distance=0.1..,team=yellow,tag=FIGHT,gamemode=!spectator] run return fail
execute if entity @s[team=green] if entity @a[distance=0.1..,team=green,tag=FIGHT,gamemode=!spectator] run return fail

function wallwar:event/vote/use