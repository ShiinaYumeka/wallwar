
#execute if score build_court tid matches 1.. as @a[scores={kill=1..}] unless score build_court tid = @s tid run return fail

execute as @a[scores={kill=1..}] unless score build_court tid = @s tid run function wallwar:build/court/kill/konpaku

execute unless entity @a[scores={kill=1..}] run function wallwar:build/court/kill/random

tellraw @a [{text:"[法官] ",color:"light_purple"},{text:"巴尔收到了",color:"white"},{selector:"@s"},{text:"的痛苦"}]
