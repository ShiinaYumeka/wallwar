
forceload add ~16 ~16 ~-16 ~-16

fill ~36 301 ~36 ~-36 303 ~-36 bedrock
fill ~35 304 ~35 ~-35 305 ~-35 reinforced_deepslate
fill ~35 306 ~35 ~-35 306 ~-35 sculk
fill ~35 307 ~35 ~-35 311 ~-35 air
fill ~35 312 ~35 ~-35 316 ~-35 air
fill ~35 317 ~35 ~-35 317 ~-35 minecraft:reinforced_deepslate
fill ~35 318 ~35 ~-35 318 ~-35 deepslate
fill ~35 319 ~35 ~-35 319 ~-35 bedrock


fill ~36 301 ~36 ~36 319 ~-36 reinforced_deepslate
fill ~36 301 ~36 ~-36 319 ~36 reinforced_deepslate
fill ~-36 301 ~-36 ~-36 319 ~36 reinforced_deepslate
fill ~-36 301 ~-36 ~36 319 ~-36 reinforced_deepslate



fill ~10 306 ~10 ~10 310 ~-10 reinforced_deepslate
fill ~10 306 ~10 ~-10 310 ~10 reinforced_deepslate
fill ~-10 306 ~-10 ~-10 310 ~10 reinforced_deepslate
fill ~-10 306 ~-10 ~10 310 ~-10 reinforced_deepslate

fill ~-1 306 ~-1 ~1 311 ~1 reinforced_deepslate

execute positioned ~20 ~ ~20 run function wallwar:death_fight/oldcity/cross
execute positioned ~-20 ~ ~20 run function wallwar:death_fight/oldcity/cross
execute positioned ~20 ~ ~-20 run function wallwar:death_fight/oldcity/cross
execute positioned ~-20 ~ ~-20 run function wallwar:death_fight/oldcity/cross

execute positioned ~30 ~ ~30 run function wallwar:death_fight/oldcity/gap
execute positioned ~-30 ~ ~30 run function wallwar:death_fight/oldcity/gap
execute positioned ~30 ~ ~-30 run function wallwar:death_fight/oldcity/gap
execute positioned ~-30 ~ ~-30 run function wallwar:death_fight/oldcity/gap

execute positioned ~30 ~ ~ run function wallwar:death_fight/oldcity/diamond
execute positioned ~-30 ~ ~ run function wallwar:death_fight/oldcity/diamond
execute positioned ~ ~ ~-30 run function wallwar:death_fight/oldcity/diamond
execute positioned ~ ~ ~30 run function wallwar:death_fight/oldcity/diamond


#summon marker ~ 307 ~ {Tags:["death_fight_summon"]}

#scoreboard players set #rd_const time 150
#execute as @n[tag=death_fight_summon] run function wallwar:death_fight/oldcity/lantern

#kill @e[tag=death_fight_summon]

worldborder set 71
execute as 0-0-0-0-1 at @s run tp @a ~ 306 ~
execute at 0-0-0-0-1 positioned ~ 306 ~ run spreadplayers ~ ~ 15 15 under 312 true @a[team=!sp,gamemode=!spectator]
