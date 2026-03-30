
scoreboard players reset @s fishing_use
execute unless entity @s[predicate=moving] run scoreboard players add @s afk 200
#execute unless entity @s[predicate=swim] if block ~ ~ ~ water run scoreboard players add @s afk 1000
execute if entity @s[predicate=moving,predicate=!ride] unless block ~ ~ ~ water if score @s afk matches 1000.. run scoreboard players remove @s afk 1000
execute if score @s afk matches ..-100 run function wallwar:system/afk/add
execute if score @s afk matches ..-20000 run scoreboard players set @s afk -20000


execute if score @s afk matches ..-100 run return run attribute @s luck base set 8
execute if score @s afk matches -99..9999 run return run attribute @s luck base set 0
playsound entity.elder_guardian.curse player @s
execute if score @s afk matches 10000..11999 run return run attribute @s luck base set -3
particle elder_guardian ~ ~ ~ 0 0 0 1 1 force @s
execute if score @s afk matches 12000.. run return run attribute @s luck base set -10

