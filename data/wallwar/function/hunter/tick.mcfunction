
execute unless score #hunter_eye_init hunter_temp matches 1 run function wallwar:hunter/eye/init

execute as @a[scores={hunter_join=1..}] run function wallwar:hunter/join_hunter
execute as @a[scores={runner_join=1..}] run function wallwar:hunter/join_runner
execute as @a[scores={hunter_freeze=1..100}] if score #Hunter_MODE time matches 1.. unless score GAMEMODE time matches 1.. run function wallwar:hunter/set_freeze

execute unless score GAME_PRO time matches 1.. run scoreboard players enable @a hunter_join
execute unless score GAME_PRO time matches 1.. run scoreboard players enable @a runner_join
execute unless score GAME_PRO time matches 1.. run scoreboard players enable @a hunter_freeze

execute as @a[team=red] at @s run function wallwar:hunter/players/main
execute as @a[scores={hunter_drop_eye=1..}] at @s run function wallwar:hunter/eye/drop
execute as @a[scores={hunter_use_eye=1..}] at @s run function wallwar:hunter/eye/thrown

execute if score #hunter_freeze_left time matches 1.. run function wallwar:hunter/freeze/tick
