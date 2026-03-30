
scoreboard players set #temp temp 100
execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] run function wallwar:event/armor_damage/head
execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] run function wallwar:event/armor_damage/chest
execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] run function wallwar:event/armor_damage/legs
execute as @a[tag=FIGHT,team=!sp,gamemode=!spectator] run function wallwar:event/armor_damage/feet