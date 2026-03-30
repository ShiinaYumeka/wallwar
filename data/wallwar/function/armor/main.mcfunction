scoreboard players reset #armor time
#execute store result score #temp temp run random value 1..100
execute as @a[team=!sp,gamemode=!spectator] if items entity @s armor.head leather_helmet[custom_data~{pumpkin_armor:1b}] if items entity @s armor.chest leather_chestplate[custom_data~{pumpkin_armor:1b}] if items entity @s armor.legs leather_leggings[custom_data~{pumpkin_armor:1b}] if items entity @s armor.feet leather_boots[custom_data~{pumpkin_armor:1b}] at @s run function wallwar:armor/pumpkin

execute as @a[team=!sp,gamemode=!spectator] if items entity @s armor.head leather_helmet[custom_data~{melon_armor:1b}] if items entity @s armor.chest leather_chestplate[custom_data~{melon_armor:1b}] if items entity @s armor.legs leather_leggings[custom_data~{melon_armor:1b}] if items entity @s armor.feet leather_boots[custom_data~{melon_armor:1b}] at @s run function wallwar:armor/melon

execute as @a[team=!sp,gamemode=!spectator] if items entity @s armor.head leather_helmet[custom_data~{cactus_armor:1b}] if items entity @s armor.chest leather_chestplate[custom_data~{cactus_armor:1b}] if items entity @s armor.legs leather_leggings[custom_data~{cactus_armor:1b}] if items entity @s armor.feet leather_boots[custom_data~{cactus_armor:1b}] at @s run function wallwar:armor/cactus

execute as @a[team=!sp,gamemode=!spectator] if items entity @s armor.head leather_helmet[custom_data~{chorus_armor:1b}] if items entity @s armor.chest leather_chestplate[custom_data~{chorus_armor:1b}] if items entity @s armor.legs leather_leggings[custom_data~{chorus_armor:1b}] if items entity @s armor.feet leather_boots[custom_data~{chorus_armor:1b}] at @s run function wallwar:armor/chorus

execute as @a[team=!sp,gamemode=!spectator] if items entity @s armor.head leather_helmet[custom_data~{packed_ice_armor:1b}] if items entity @s armor.chest leather_chestplate[custom_data~{packed_ice_armor:1b}] if items entity @s armor.legs leather_leggings[custom_data~{packed_ice_armor:1b}] if items entity @s armor.feet leather_boots[custom_data~{packed_ice_armor:1b}] at @s run function wallwar:armor/packed_ice

#execute as @a[team=!sp,gamemode=!spectator] if items entity @s armor.head chainmail_helmet[custom_data~{shell_armor:1b}] if items entity @s armor.chest chainmail_chestplate[custom_data~{shell_armor:1b}] if items entity @s armor.legs chainmail_leggings[custom_data~{shell_armor:1b}] if items entity @s armor.feet chainmail_boots[custom_data~{shell_armor:1b}] at @s run function wallwar:armor/shell
execute unless score #BOSS_MODE time matches 1.. run return fail

execute as @a[team=!sp,gamemode=!spectator] if items entity @s armor.head netherite_helmet[custom_data~{boss_armor:1b}] if items entity @s armor.chest netherite_chestplate[custom_data~{boss_armor:1b}] if items entity @s armor.legs netherite_leggings[custom_data~{boss_armor:1b}] if items entity @s armor.feet netherite_boots[custom_data~{boss_armor:1b}] at @s run function wallwar:armor/boss