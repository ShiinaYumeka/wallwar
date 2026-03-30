

scoreboard players reset #recipe time

execute if score #BOSS_MODE time matches 1 unless score GAMEMODE time matches 1.. run function wallwar:boss/number
execute unless score GAME_PRO time matches 1.. run scoreboard players enable @a tutorial
execute unless score GAME_PRO time matches 1.. run scoreboard players enable @a suicide
execute unless score GAME_PRO time matches 1.. run scoreboard players enable @a nightvision

execute as @a[gamemode=!spectator] run function wallwar:recipe2
#give @s minecraft:red_bundle[bundle_contents=[{id:"chest",components:{"minecraft:container_loot":{"loot_table":"wallwar:boss/gift"}}}]]