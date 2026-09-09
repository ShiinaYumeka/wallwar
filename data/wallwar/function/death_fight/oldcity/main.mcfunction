
forceload add ~20 ~20 ~-20 ~-20

fill ~38 301 ~38 ~-38 303 ~-38 bedrock
fill ~36 304 ~36 ~-36 305 ~-36 reinforced_deepslate
fill ~36 306 ~36 ~-36 306 ~-36 sculk
fill ~36 307 ~36 ~-36 311 ~-36 air
fill ~36 312 ~36 ~-36 315 ~-36 air
fill ~36 316 ~36 ~-36 316 ~-36 minecraft:reinforced_deepslate
fill ~36 317 ~36 ~-36 317 ~-36 deepslate
fill ~36 318 ~36 ~-36 319 ~-36 bedrock


fill ~37 301 ~37 ~37 319 ~-37 reinforced_deepslate
fill ~37 301 ~37 ~-37 319 ~37 reinforced_deepslate
fill ~-37 301 ~-37 ~-37 319 ~37 reinforced_deepslate
fill ~-37 301 ~-37 ~37 319 ~-37 reinforced_deepslate

fill ~38 301 ~38 ~38 319 ~-38 reinforced_deepslate
fill ~38 301 ~38 ~-38 319 ~38 reinforced_deepslate
fill ~-38 301 ~-38 ~-38 319 ~38 reinforced_deepslate
fill ~-38 301 ~-38 ~38 319 ~-38 reinforced_deepslate



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

worldborder set 75
execute as 0-0-0-0-1 at @s run tp @a ~ 306 ~
execute at 0-0-0-0-1 positioned ~ 306 ~ run spreadplayers ~ ~ 15 15 under 312 true @a[team=!sp,gamemode=!spectator]
