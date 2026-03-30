

tag @a remove choosing
clear @a carrot_on_a_stick
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]


#execute if score Teams temp matches 1.. if score Teams temp <= Teams time run 
scoreboard players operation Teams temp += Role temp
execute if score Teams temp matches 1 run scoreboard players add Role temp 1
execute if score Teams temp = Teams time run scoreboard players remove Role temp 1
execute unless entity @a[tag=choosing] as @a[tag=leader] if score @s tid = Teams temp run function wallwar:system/random_teamup/choose/give


