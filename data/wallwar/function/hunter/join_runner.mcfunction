
execute unless score #Hunter_MODE time matches 1.. run return run scoreboard players set @s runner_join 0
execute if score GAMEMODE time matches 1.. run return run scoreboard players set @s runner_join 0

scoreboard players set @s tid 2
function wallwar:system/team/join
tag @s add runner_player
tag @s remove hunter_player

clear @s compass[custom_data~{tracker:1b}]
recipe take @s wallwar:hunter/eye
execute unless score @s hunter_uid matches 1.. run function wallwar:hunter/assign_uid

tellraw @s [{"translate":"[猎人模式] ","color":"gold"},{"translate":"你已加入逃者","color":"green"}]
tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"selector":"@s"},{"translate":" 加入了逃者","color":"green"}]

scoreboard players set @s runner_join 0
scoreboard players enable @s runner_join
