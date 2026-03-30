
forceload add ~16 ~16 ~-16 ~-16

fill ~16 260 ~16 ~-16 263 ~-16 bedrock
fill ~15 264 ~15 ~-15 267 ~-15 deepslate
fill ~15 268 ~15 ~-15 275 ~-15 stone
fill ~15 276 ~15 ~-15 300 ~-15 air
fill ~15 300 ~15 ~-15 319 ~-15 air

fill ~16 260 ~16 ~16 289 ~-16 barrier
fill ~16 260 ~16 ~-16 289 ~16 barrier
fill ~-16 260 ~-16 ~-16 289 ~16 barrier
fill ~-16 260 ~-16 ~16 289 ~-16 barrier
fill ~16 290 ~16 ~16 319 ~-16 barrier
fill ~16 290 ~16 ~-16 319 ~16 barrier
fill ~-16 290 ~-16 ~-16 319 ~16 barrier
fill ~-16 290 ~-16 ~16 319 ~-16 barrier


summon marker ~ ~ ~ {Tags:["death_fight_summon"]}

tp @n[tag=death_fight_summon] ~-15 275 ~-15 -45 0
scoreboard players set #rd_const time 40
execute as @n[tag=death_fight_summon] at @s rotated -45 0 run function wallwar:death_fight/mount/1

tp @n[tag=death_fight_summon] ~-15 274 ~-15 -45 0
scoreboard players set #rd_const time 40
execute as @n[tag=death_fight_summon] at @s rotated -45 0 run function wallwar:death_fight/mount/2

tp @n[tag=death_fight_summon] ~-15 273 ~-15 -45 0
scoreboard players set #rd_const time 40
execute as @n[tag=death_fight_summon] at @s rotated -45 0 run function wallwar:death_fight/mount/3

tp @n[tag=death_fight_summon] ~-15 272 ~-15 -45 0
scoreboard players set #rd_const time 40
execute as @n[tag=death_fight_summon] at @s rotated -45 0 run function wallwar:death_fight/mount/4

tp @n[tag=death_fight_summon] ~-15 271 ~-15 -45 0
scoreboard players set #rd_const time 40
execute as @n[tag=death_fight_summon] at @s rotated -45 0 run function wallwar:death_fight/mount/5

tp @n[tag=death_fight_summon] ~-15 270 ~-15 -45 0
scoreboard players set #rd_const time 40
execute as @n[tag=death_fight_summon] at @s rotated -45 0 run function wallwar:death_fight/mount/6


kill @e[tag=death_fight_summon]

worldborder set 31
execute as 0-0-0-0-1 at @s run tp @a ~ 276 ~
execute at 0-0-0-0-1 positioned ~ 276 ~ run spreadplayers ~ ~ 15 15 true @a[team=!sp,gamemode=!spectator]
