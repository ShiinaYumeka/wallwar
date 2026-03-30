


effect clear @a glowing
tag @a remove chose
tag @a remove choosing
tag @a remove leader
clear @a carrot_on_a_stick
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

scoreboard players set @a[team=!sp] tid 0
execute as @a run function wallwar:system/team/join
execute unless score Teams time matches 2.. run scoreboard players set Teams time 4
scoreboard players operation Teams temp = Teams time
execute if score Teams temp matches 1.. run function wallwar:system/random_teamup/main/get_leader


scoreboard players set Team_main time 1
tellraw @a [{"translate":"[系统]: "},{"translate":"队长选人已开始"}]

scoreboard players set Role temp -1
scoreboard players operation Teams temp = Teams time
execute unless entity @a[tag=choosing] as @a[tag=leader] if score @s tid = Teams temp run function wallwar:system/random_teamup/choose/give
