
forceload add ~21 ~21 ~-21 ~-21

fill ~21 286 ~21 ~-21 290 ~-21 bedrock
fill ~20 291 ~20 ~-20 292 ~-20 deepslate
fill ~20 293 ~20 ~-20 293 ~-20 stone
fill ~20 294 ~20 ~-20 294 ~-20 dirt
fill ~20 295 ~20 ~-20 295 ~-20 grass_block
fill ~20 296 ~20 ~-20 300 ~-20 air
fill ~20 296 ~20 ~-20 319 ~-20 air

fill ~21 301 ~21 ~21 319 ~-21 barrier
fill ~21 301 ~21 ~-21 319 ~21 barrier
fill ~-21 301 ~-21 ~-21 319 ~21 barrier
fill ~-21 301 ~-21 ~21 319 ~-21 barrier
fill ~21 286 ~21 ~21 300 ~-21 barrier
fill ~21 286 ~21 ~-21 300 ~21 barrier
fill ~-21 286 ~-21 ~-21 300 ~21 barrier
fill ~-21 286 ~-21 ~21 300 ~-21 barrier


summon marker ~ 295 ~ {Tags:["death_fight_summon"]}
scoreboard players set #rd_const time 400
execute as @n[tag=death_fight_summon] run function wallwar:death_fight/plain/grass

scoreboard players set #rd_const time 100
execute as @n[tag=death_fight_summon] run function wallwar:death_fight/plain/grass2

scoreboard players set #rd_const time 20
execute as @n[tag=death_fight_summon] run function wallwar:death_fight/plain/flower

scoreboard players set #rd_const time 20
execute as @n[tag=death_fight_summon] run function wallwar:death_fight/plain/flower2

function wallwar:death_fight/plain/tree
kill @e[tag=death_fight_summon]

worldborder set 41

execute as 0-0-0-0-1 at @s run tp @a ~ 296 ~
execute at 0-0-0-0-1 positioned ~ 296 ~ run spreadplayers ~ ~ 20 20 true @a[team=!sp,gamemode=!spectator]
