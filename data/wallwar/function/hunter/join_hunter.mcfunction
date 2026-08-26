
execute unless score #Hunter_MODE time matches 1.. run return run scoreboard players set @s hunter_join 0
execute if score GAMEMODE time matches 1.. run return run scoreboard players set @s hunter_join 0

scoreboard players set @s tid 4
function wallwar:system/team/join
tag @s add hunter_player
tag @s remove runner_player

execute unless score @s hunter_uid matches 1.. run function wallwar:hunter/assign_uid
function wallwar:hunter/give_compass
recipe give @s wallwar:hunter/eye

tellraw @s [{"translate":"[猎人模式] ","color":"gold"},{"translate":"你已加入猎人","color":"red"}]
tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"selector":"@s"},{"translate":" 加入了猎人","color":"red"}]

scoreboard players set @s hunter_join 0
scoreboard players enable @s hunter_join
