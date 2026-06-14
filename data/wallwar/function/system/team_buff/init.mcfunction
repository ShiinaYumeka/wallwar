
scoreboard players set @a[team=!sp] team_buff 1
scoreboard players set #red_buff_start team_buff 0
scoreboard players set #blue_buff_start team_buff 0
scoreboard players set #green_buff_start team_buff 0
scoreboard players set #yellow_buff_start team_buff 0
execute store result score #red_buff_start team_buff if entity @a[team=red]
execute store result score #blue_buff_start team_buff if entity @a[team=blue]
execute store result score #green_buff_start team_buff if entity @a[team=green]
execute store result score #yellow_buff_start team_buff if entity @a[team=yellow]
scoreboard players operation #red_buff team_buff = #red_buff_start team_buff
scoreboard players operation #blue_buff team_buff = #blue_buff_start team_buff
scoreboard players operation #green_buff team_buff = #green_buff_start team_buff
scoreboard players operation #yellow_buff team_buff = #yellow_buff_start team_buff
