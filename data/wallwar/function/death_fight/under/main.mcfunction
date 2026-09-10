
forceload add ~22 ~22 ~-22 ~-22

fill ~22 295 ~22 ~-22 297 ~-22 bedrock
fill ~20 298 ~20 ~-20 302 ~-20 deepslate
fill ~20 303 ~20 ~-20 317 ~-20 stone
fill ~22 318 ~22 ~-22 319 ~-22 bedrock

fill ~21 298 ~21 ~21 317 ~-21 stone
fill ~21 298 ~21 ~-21 317 ~21 stone
fill ~-21 298 ~-21 ~-21 317 ~21 stone
fill ~-21 298 ~-21 ~21 317 ~-21 stone

fill ~22 298 ~22 ~22 317 ~-22 stone
fill ~22 298 ~22 ~-22 317 ~22 stone
fill ~-22 298 ~-22 ~-22 317 ~22 stone
fill ~-22 298 ~-22 ~22 317 ~-22 stone

fill ~-7 307 ~-7 ~7 317 ~7 smooth_basalt
fill ~-6 308 ~-6 ~6 316 ~6 calcite
fill ~-5 309 ~-5 ~5 314 ~5 air

fill ~14 303 ~14 ~20 306 ~20 air
fill ~14 303 ~-20 ~20 306 ~-14 air
fill ~-20 303 ~-20 ~-14 306 ~-14 air
fill ~-20 303 ~14 ~-14 306 ~20 air

fill ~-1 303 ~16 ~13 306 ~18 air
fill ~-13 303 ~-18 ~1 306 ~-16 air
fill ~16 303 ~-13 ~18 306 ~1 air
fill ~-18 303 ~-1 ~-16 306 ~13 air

fill ~-1 303 ~8 ~1 306 ~15 air
fill ~-1 303 ~-15 ~1 306 ~-8 air
fill ~8 303 ~-1 ~15 306 ~1 air
fill ~-15 303 ~-1 ~-8 306 ~1 air

fill ~-1 303 ~8 ~1 312 ~8 air
fill ~-1 303 ~-8 ~1 312 ~-8 air
fill ~8 303 ~-1 ~8 312 ~1 air
fill ~-8 303 ~-1 ~-8 312 ~1 air

fill ~-1 310 ~5 ~1 312 ~7 air
fill ~-1 310 ~-7 ~1 312 ~-5 air
fill ~5 310 ~-1 ~7 312 ~1 air
fill ~-7 310 ~-1 ~-5 312 ~1 air

fill ~ 303 ~8 ~ 309 ~8 ladder[facing=south]
fill ~ 303 ~-8 ~ 309 ~-8 ladder[facing=north]
fill ~8 303 ~ ~8 309 ~ ladder[facing=east]
fill ~-8 303 ~ ~-8 309 ~ ladder[facing=west]

function wallwar:death_fight/under/ore

setblock ~17 306 ~17 glowstone
setblock ~17 306 ~-17 glowstone
setblock ~-17 306 ~-17 glowstone
setblock ~-17 306 ~17 glowstone

worldborder set 43

execute as 0-0-0-0-1 at @s run tp @a ~ 310 ~
execute as 0-0-0-0-1 at @s run tp @a[team=red,gamemode=!spectator] ~17 303 ~17
execute as 0-0-0-0-1 at @s run tp @a[team=blue,gamemode=!spectator] ~17 303 ~-17
execute as 0-0-0-0-1 at @s run tp @a[team=green,gamemode=!spectator] ~-17 303 ~-17
execute as 0-0-0-0-1 at @s run tp @a[team=yellow,gamemode=!spectator] ~-17 303 ~17
