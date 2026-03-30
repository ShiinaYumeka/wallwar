
#execute at @s as @e[distance=..5,type=item] run say 1

execute as @a[scores={kill=1..}] at @s run tag @s[type=player] add killer
execute if entity @s[team=red] as @a[tag=killer,team=red,limit=1,sort=nearest] run return run function wallwar:death/head3
execute if entity @s[team=blue] as @a[tag=killer,team=blue,limit=1,sort=nearest] run return run function wallwar:death/head3
execute if entity @s[team=yellow] as @a[tag=killer,team=yellow,limit=1,sort=nearest] run return run function wallwar:death/head3
execute if entity @s[team=green] as @a[tag=killer,team=green,limit=1,sort=nearest] run return run function wallwar:death/head3
execute if entity @a[tag=killer,limit=1,sort=nearest] run function wallwar:death/head_
execute unless entity @a[tag=killer,limit=1,sort=nearest] as @s at @s run function wallwar:death/head2
#execute as @a[tag=killer,limit=1,sort=nearest] run say 1
tag @a remove killer