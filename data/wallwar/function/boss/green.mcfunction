
execute store result score #boss_team temp if entity @a[team=green]
execute store result score #other_team temp if entity @a[team=!sp,team=!green]

execute as @a[team=green] run function wallwar:boss/change

scoreboard players operation #hp temp = #other_team temp
scoreboard players operation #hp temp -= #boss_team temp
scoreboard players operation #hp temp *= 4 const
execute store result storage minecraft:temp temp.hp double 1 run scoreboard players add #hp temp 20
function wallwar:boss/change_a with storage minecraft:temp temp


#复活惩罚
scoreboard players set @a[team=green] recipe 2