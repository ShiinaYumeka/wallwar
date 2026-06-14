
execute as @a[gamemode=spectator,team=!sp,tag=!FIGHT] at @e[tag=death_fight_summon,limit=1] run function wallwar:death_fight/respawn_dead_p
