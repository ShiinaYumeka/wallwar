
execute if entity @s[team=red] store result score #tb_alive temp if entity @a[team=red,scores={team_buff=1}]
execute if entity @s[team=blue] store result score #tb_alive temp if entity @a[team=blue,scores={team_buff=1}]
execute if entity @s[team=green] store result score #tb_alive temp if entity @a[team=green,scores={team_buff=1}]
execute if entity @s[team=yellow] store result score #tb_alive temp if entity @a[team=yellow,scores={team_buff=1}]

execute if entity @s[team=red] store result score #tb_fight temp if entity @a[team=red,tag=FIGHT,gamemode=!spectator,scores={team_buff=1}]
execute if entity @s[team=blue] store result score #tb_fight temp if entity @a[team=blue,tag=FIGHT,gamemode=!spectator,scores={team_buff=1}]
execute if entity @s[team=green] store result score #tb_fight temp if entity @a[team=green,tag=FIGHT,gamemode=!spectator,scores={team_buff=1}]
execute if entity @s[team=yellow] store result score #tb_fight temp if entity @a[team=yellow,tag=FIGHT,gamemode=!spectator,scores={team_buff=1}]

execute if score #tb_fight temp matches 1 run effect give @s minecraft:absorption infinite 1 true
execute if score #tb_fight temp matches 1 run effect give @s minecraft:invisibility infinite 0 true

scoreboard players operation #tb_other temp = #tb_fight temp
execute if score #tb_other temp matches 2.. run scoreboard players remove #tb_other temp 1
execute if score #tb_other temp matches 1.. run scoreboard players operation #tb_abs temp = #tb_other temp
execute if score #tb_other temp matches 1.. run scoreboard players operation #tb_abs temp *= 2 const
execute if score #tb_other temp matches 1.. run scoreboard players remove #tb_abs temp 1
execute if score #tb_abs temp matches 0 run effect give @s minecraft:absorption infinite 0 true
execute if score #tb_abs temp matches 1 run effect give @s minecraft:absorption infinite 1 true
execute if score #tb_abs temp matches 2 run effect give @s minecraft:absorption infinite 2 true
execute if score #tb_abs temp matches 3 run effect give @s minecraft:absorption infinite 3 true
execute if score #tb_abs temp matches 4.. run effect give @s minecraft:absorption infinite 4 true

scoreboard players operation #tb_pct temp = #tb_alive temp
scoreboard players operation #tb_pct temp *= 100 const
execute if entity @s[team=red] run scoreboard players operation #tb_pct temp /= #red_buff_start team_buff
execute if entity @s[team=blue] run scoreboard players operation #tb_pct temp /= #blue_buff_start team_buff
execute if entity @s[team=green] run scoreboard players operation #tb_pct temp /= #green_buff_start team_buff
execute if entity @s[team=yellow] run scoreboard players operation #tb_pct temp /= #yellow_buff_start team_buff
execute if score #tb_pct temp matches 75.. run effect give @s minecraft:resistance infinite 0 true
execute if entity @s[team=red] if score #tb_alive temp = #red_buff_start team_buff run effect give @s minecraft:strength infinite 0 true
execute if entity @s[team=blue] if score #tb_alive temp = #blue_buff_start team_buff run effect give @s minecraft:strength infinite 0 true
execute if entity @s[team=green] if score #tb_alive temp = #green_buff_start team_buff run effect give @s minecraft:strength infinite 0 true
execute if entity @s[team=yellow] if score #tb_alive temp = #yellow_buff_start team_buff run effect give @s minecraft:strength infinite 0 true
