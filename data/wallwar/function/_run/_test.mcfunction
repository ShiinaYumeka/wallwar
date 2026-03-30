
damage @s 10 player_attack

execute store result score #damage temp run data get entity @s Health 100


scoreboard players set #damage_ temp 2000
scoreboard players operation #damage_ temp -= #damage temp
scoreboard players operation #damage_c temp = #damage_ temp
scoreboard players operation #damage_ temp /= 100 const
scoreboard players operation #damage_c temp %= 100 const

tellraw @a [{"translate": "本次伤害："},{"score": {"name": "#damage_","objective": "temp"}},{"translate": "点"},{"score": {"name": "#damage_c","objective": "temp"}},{"translate": "%"}]
effect give @s minecraft:instant_health 1 5

