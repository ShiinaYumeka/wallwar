
execute store result bossbar minecraft:gauge value run scoreboard players get GAME time
execute store result bossbar minecraft:gauge2 value run scoreboard players get GAME time
execute store result bossbar minecraft:gauge3 value run scoreboard players get GAME time
execute store result bossbar minecraft:gauge4 value run scoreboard players get GAME time
execute store result bossbar minecraft:gauge5 value run scoreboard players get GAME time
execute store result bossbar minecraft:gauge6 value run scoreboard players get GAME time

scoreboard players operation GAME_t temp = GAME time
scoreboard players operation GAME_s temp = GAME time
scoreboard players operation GAME_m temp = GAME time
scoreboard players operation GAME_m temp /= 1200 const
scoreboard players operation GAME_s temp /= 20 const
scoreboard players operation GAME_s temp %= 60 const
scoreboard players operation GAME_t temp %= 20 const

execute if score GAME_t temp matches 10.. run return run function wallwar:system/timer/bossbar1
execute unless score GAME_t temp matches 10.. run return run function wallwar:system/timer/bossbar0
