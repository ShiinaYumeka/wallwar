
execute unless score @s rejoin matches -10 run function wallwar:system/rejoin/main
execute if score @s rc matches 1.. run function wallwar:system/rc/use

execute if score @s time matches 1.. run scoreboard players remove @s time 1
#execute if entity @s[tag=wither_user] run function wallwar:wither/main_p

execute if entity @s[scores={HP=..4},tag=battle_flesh_player,nbt=!{active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run function wallwar:build/battle/effect/flesh
execute if entity @s[scores={konpaku=8..},tag=boss_command2_user,nbt=!{active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run function wallwar:boss/command2/heal
execute if entity @s[scores={HP=..5},level=20..,nbt=!{active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] if items entity @s armor.head leather_helmet[custom_data={crown_head:1b}] run function wallwar:crown/main
execute if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect clear @s regeneration
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:conduit_power"}]}] run effect clear @s strength
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:strength"}]},nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run effect give @s strength 1 0
execute if items entity @s weapon.mainhand enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run function wallwar:system/end/main
execute if items entity @s container.* enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run function wallwar:system/end/pick

execute if score GAME_PRO time matches 7.. if entity @s[advancements={wallwar/misc/ender_chest=true,wallwar/misc/ender_delete=false}] if items entity @s enderchest.* enchanted_golden_apple[custom_data~{"death_fight_end":1b}] run function wallwar:dead_noapple

execute if score @s death matches 1.. run function wallwar:death/main
execute if score @s invisible matches 1.. if score @s HP matches 1.. run scoreboard players remove @s invisible 1
execute if score @s invisible matches 1 run function wallwar:death/invisible

execute if entity @s[predicate=ride] run scoreboard players add @s afk 1
execute unless entity @s[predicate=moving] run scoreboard players add @s afk 1
execute unless entity @s[predicate=swim] if block ~ ~ ~ water run scoreboard players add @s afk 2
execute if entity @s[predicate=moving,predicate=!ride] unless block ~ ~ ~ water if score @s afk matches 0.. run scoreboard players remove @s afk 1
execute if score @s fishing_use matches 1.. run function wallwar:system/afk/main

execute if score @s weapon_haku matches 1.. run scoreboard players remove @s weapon_haku 1
execute if score @s weapon_rokan matches 1.. run scoreboard players remove @s weapon_rokan 1

clear @s potion[potion_contents={potion:harming}]
clear @s potion[potion_contents={potion:strong_harming}]
clear @s splash_potion[potion_contents={potion:harming}]
clear @s splash_potion[potion_contents={potion:strong_harming}]
clear @s lingering_potion[potion_contents={potion:harming}]
clear @s lingering_potion[potion_contents={potion:strong_harming}]
#记得删除

execute if entity @e[tag=ctp,tag=event_pig] run function wallwar:event/pig/main

execute if score @s nightvision matches 1.. run function wallwar:system/nightvision/main

execute if score @s suicide matches 1.. run function wallwar:system/suicide

execute if score @s tutorial matches 1.. run function wallwar:tutorial/use

execute if score @s wither_horn_use matches 1.. run function wallwar:wither/player/horn/use

execute if score @s command_book_use matches 1.. run function wallwar:command/rc

execute if score #force_spec time matches 1.. if entity @s[gamemode=spectator,team=!sp] run function wallwar:system/force_spec


execute if score #wither_no_use time matches 1.. run return fail
execute if score @s respawn matches 1.. if entity @s[team=!sp,gamemode=spectator,tag=!FIGHT] if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{respawn_star:1b}}}},distance=..2] run function wallwar:respawn/test
execute if score @s respawn matches 1 if entity @s[team=!sp,gamemode=spectator,tag=!FIGHT] if entity @e[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{respawn_star_head:1b}}}},distance=..2] run function wallwar:respawn2/test

