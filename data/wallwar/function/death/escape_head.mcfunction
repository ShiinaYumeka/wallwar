
summon item ~ ~ ~ {Tags:["new"],Item:{id:player_head,count:1b}}
data modify entity @n[tag=new] Item.components.minecraft:profile.name set from entity @s CustomName
data modify entity @n[tag=new] Item.components.minecraft:profile.id set from entity @s UUID
#execute on attacker at @s run tp @e[tag=new] ~ ~ ~
tag @e[tag=new] remove new