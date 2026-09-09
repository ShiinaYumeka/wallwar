
execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] if score @s tid = build_court tid run tag @s add building_court_konpaku_temp

execute as @r[tag=FIGHT,team=!sp,gamemode=!spectator,tag=building_court_konpaku_temp] run function wallwar:build/court/kill/konpaku

tag @a remove building_court_konpaku_temp
