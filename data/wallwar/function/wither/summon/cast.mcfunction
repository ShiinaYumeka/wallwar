
difficulty normal
summon wither ~ 315 ~ {Tags:["new","wither"],PersistenceRequired:true,CustomNameVisible:true}


#execute if entity @s[team=red] as @a[team=red,tag=!wither_user,tag=FIGHT] run function wallwar:wither/die
#execute if entity @s[team=yellow] as @a[team=yellow,tag=!wither_user,tag=FIGHT] run function wallwar:wither/die
#execute if entity @s[team=blue] as @a[team=blue,tag=!wither_user,tag=FIGHT] run function wallwar:wither/die
#execute if entity @s[team=green] as @a[team=green,tag=!wither_user,tag=FIGHT] run function wallwar:wither/die

execute if score #temp wither_armor matches 20.. run scoreboard players set #temp wither_armor 20
execute store result entity @e[tag=new,limit=1] attributes[{id:"minecraft:armor"}].base double 1 run scoreboard players get #temp wither_armor
execute store result entity @e[tag=new,limit=1] attributes[{id:"minecraft:max_health"}].base double 1 run scoreboard players get #temp wither_health
execute store result entity @e[tag=new,limit=1] Health double 1 run scoreboard players get #temp wither_health


tag @e[tag=new] remove new

title @s title {"translate":"凋灵降临！","color":"dark_red"}
title @s subtitle {"translate":"毁灭他们……"}

