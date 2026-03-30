
scoreboard players remove GAME time 1
#execute if score #URF_MODE time matches 1.. run function wallwar:boss_urf/timer

function wallwar:system/timer/bossbar

execute unless score GAME time matches 1.. run function wallwar:system/timer/end
execute if score GAME time matches 100 run function wallwar:system/timer/ready
execute if score GAME time matches 20..100 run execute as @a at @s run playsound minecraft:block.note_block.bell player @s


execute if score GAME_PRO time matches 5.. as 0-0-0-0-1 at @s run function wallwar:death_fight/no_high
execute if score GAME_PRO time matches 5.. run effect give @a[tag=FIGHT] minecraft:hunger infinite 1
execute if score GAME_PRO time matches 6 run effect give @a[tag=FIGHT] minecraft:poison infinite 0
execute if score GAME_PRO time matches 7 run effect give @a[tag=FIGHT] minecraft:poison infinite 1
execute if score GAME_PRO time matches 8 run effect give @a[tag=FIGHT] minecraft:wither infinite 1
execute if score GAME_PRO time matches 9 run effect give @a[tag=FIGHT] minecraft:wither infinite 0
execute if score GAME_PRO time matches 10.. run effect give @a[tag=FIGHT] minecraft:wither infinite 2
execute if score GAME_PRO time matches 5.. store result bossbar ocean value run data get entity @n[type=guardian,tag=ocean_bob] Health 1000


execute as @e[tag=event_gift] at @s run particle campfire_signal_smoke ~ ~ ~ 0 1 0 0.5 0 force @a
execute as @e[type=arrow,nbt={inGround:1b}] if data entity @s item.components."minecraft:potion_contents" run kill @s
execute as @e[type=ender_pearl] at @s if entity @s[y=320,dy=40] run kill @s


scoreboard players add #lowY time 1
execute if score #lowY time matches 50.. run function wallwar:system/y/main

execute if score lowY_Pro time matches 2.. run scoreboard players remove lowY_Pro time 1
execute if score lowY_Pro time matches 1 at 0-0-0-0-1 run function wallwar:build/sand/start/end

