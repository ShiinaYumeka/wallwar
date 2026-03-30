

scoreboard players set @s invisible 10

scoreboard players set #respawn_suc temp 1

tellraw @a [{"translate":"[战墙] "},{"selector":"@s"},{"translate":" 命不该绝","color":"white"}]

execute positioned ~ ~-1.5 ~ run function wallwar:build/respawn/effect_
#particle block_marker{block_state:"barrier"} ~ ~ ~
execute if block ~ ~-2.5 ~ redstone_block run return run function wallwar:build/respawn/break

execute if score @s tid matches 4 as @p[distance=0.1..,team=red,tag=FIGHT] at @s run function wallwar:build/respawn/break
execute if score @s tid matches 1 as @p[distance=0.1..,team=blue,tag=FIGHT] at @s run function wallwar:build/respawn/break
execute if score @s tid matches 3 as @p[distance=0.1..,team=yellow,tag=FIGHT] at @s run function wallwar:build/respawn/break
execute if score @s tid matches 2 as @p[distance=0.1..,team=green,tag=FIGHT] at @s run function wallwar:build/respawn/break

