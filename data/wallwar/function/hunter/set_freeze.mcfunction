
execute unless score #Hunter_MODE time matches 1.. run return run scoreboard players reset @s hunter_freeze
execute if score GAMEMODE time matches 1.. run return run scoreboard players reset @s hunter_freeze

execute unless score @s hunter_freeze matches 0..100 run tellraw @s [{"translate":"[猎人模式] ","color":"gold"},{"translate":"冻结秒数需在 0-100 之间","color":"red"}]
execute unless score @s hunter_freeze matches 0..100 run return run scoreboard players reset @s hunter_freeze

scoreboard players operation #hunter_freeze time = @s hunter_freeze
tellraw @a [{"translate":"[猎人模式] ","color":"gold"},{"translate":"开局冻结猎人：","color":"white"},{"score":{"name":"#hunter_freeze","objective":"time"},"color":"aqua"},{"translate":" 秒","color":"white"}]

scoreboard players reset @s hunter_freeze
scoreboard players enable @s hunter_freeze
