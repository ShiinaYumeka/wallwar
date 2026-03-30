
execute store result score #temp HELP_ME if entity @a[tag=FIGHT,team=!sp,gamemode=!spectator,scores={HELP_ME=1..}]
execute if score #temp HELP_ME >= 0-0-0-0-1 HELP_ME run function wallwar:event/vote/give
