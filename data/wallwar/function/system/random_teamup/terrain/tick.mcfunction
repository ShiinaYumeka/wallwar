execute unless score #ww_phase time matches 1..3 run return 0
execute unless score GAMEMODE time matches 0 run return run function wallwar:system/random_teamup/terrain/cancel
scoreboard players set #ww_count temp 0
execute as @a[tag=ww_participant] run scoreboard players add #ww_count temp 1
execute unless score #ww_count temp = #ww_expected temp run return run function wallwar:system/random_teamup/terrain/disconnected
execute if score #ww_phase time matches 1 as @a[tag=ww_captain,scores={ww_ready=1..}] run function wallwar:system/random_teamup/terrain/confirm
execute if score #ww_phase time matches 1 run scoreboard players enable @a[tag=ww_captain,tag=!ww_confirmed] ww_ready
execute if score #ww_phase time matches 2 as @a[tag=ww_turn,scores={ww_terrain=1..}] run function wallwar:system/random_teamup/terrain/choose
execute if score #ww_phase time matches 2 run scoreboard players enable @a[tag=ww_turn] ww_terrain
