
scoreboard players set #Hunter_MODE time 1

setblock ~ ~ ~ repeating_command_block{auto:true,Command:"/gamemode survival @a[tag=lr]"} replace

kill 0-0-0-0-1

forceload remove all
forceload add ~ ~ ~ ~

execute align xyz rotated 0 0 run summon minecraft:item_display ~0.5 ~ ~0.5 {UUID:[I;0,0,0,1]}