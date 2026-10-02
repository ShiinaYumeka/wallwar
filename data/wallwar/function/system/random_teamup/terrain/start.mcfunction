# Callers mark participants and optional seed captains; no territory is assigned here.
execute unless score GAMEMODE time matches 0 run return 0
scoreboard players set #ww_count temp 0
execute as @a[tag=ww_participant,tag=!no_leader] run scoreboard players add #ww_count temp 1
execute as @a[tag=ww_participant,tag=ww_seed,tag=no_leader] run scoreboard players add #ww_count temp 1
execute unless score #ww_count temp matches 4.. run return run tellraw @a {text:"至少需要四名可用队长。",color:"red"}
scoreboard players set #ww_count temp 0
execute as @a[tag=ww_participant,tag=ww_seed] run scoreboard players add #ww_count temp 1
execute if score #ww_count temp matches 5.. run return run tellraw @a {text:"指定队长不能超过四名。",color:"red"}
tag @a remove ww_ranked
tag @a remove ww_captain
tag @a remove ww_confirmed
tag @a remove ww_turn
tag @a remove leader
tag @a remove choosing
tag @a remove chose
scoreboard players reset * ww_order
scoreboard players reset * ww_ready
scoreboard players reset * ww_terrain
scoreboard players set #ww_phase time 1
scoreboard players set #ww_complete time 0
scoreboard players set Team_main time 1
scoreboard players set #ww_expected temp 0
execute as @a[tag=ww_participant] run scoreboard players add #ww_expected temp 1
scoreboard players set @a[tag=ww_participant] tid 0
execute as @a[tag=ww_participant] run function wallwar:system/team/join
scoreboard players set #ww_count temp 0
function wallwar:system/random_teamup/terrain/select_captains
scoreboard players set @a[tag=ww_captain] ww_ready 0
scoreboard players enable @a[tag=ww_captain] ww_ready
tellraw @a [{text:"本轮队长：",color:"gold"},{selector:"@a[tag=ww_captain]"},{text:"。全部确认后随机抽选地形顺序；选人按相反顺序进行。"}]
tellraw @a[tag=ww_captain] {text:"[确认担任队长]",color:"green",click_event:{action:"run_command",command:"/trigger ww_ready set 1"}}
