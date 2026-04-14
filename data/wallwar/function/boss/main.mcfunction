
tag @a remove boss_player
scoreboard players operation #temp tid = @s tid
execute as @a[team=!sp] if score @s tid = #temp tid run tag @s add boss_player

execute store result score #boss_team temp if entity @a[tag=boss_player]
execute store result score #other_team temp if entity @a[team=!sp,tag=!boss_player]

execute as @a[tag=boss_player] run function wallwar:boss/change

scoreboard players operation #hp temp = #other_team temp
scoreboard players operation #hp temp -= #boss_team temp
scoreboard players operation #hp temp *= 4 const
execute store result storage minecraft:temp temp.hp double 1 run scoreboard players add #hp temp 20
function wallwar:boss/change_a with storage minecraft:temp temp



function wallwar:boss/command

#复活惩罚
scoreboard players add @s respawn 1

tellraw @a [{"selector": "@s"},{"translate": "成为了BOSS"}]
