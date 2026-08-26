
scoreboard players set @s death 0
scoreboard players set @s invisible 10

execute as @a[scores={kill=1..}] run tag @s add killer
execute if entity @s[tag=hunter_player] if entity @a[tag=killer,team=green,limit=1] run function wallwar:death/head_
tag @a remove killer

tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"selector":"@s","color":"red"},{"translate":" 被击倒，正在复活…","color":"white"}]

tag @s add FIGHT
tag @s add hunter_player
scoreboard players reset @a kill
