
spreadplayers ~ ~ 3 15 under 315 false @s
gamemode survival @s
tag @s add FIGHT
tag @s add deathmatch_respawn
scoreboard players set @s team_buff 0

item replace entity @s armor.head with diamond_helmet[enchantments={protection:2}]
item replace entity @s armor.chest with diamond_chestplate[enchantments={protection:2}]
item replace entity @s armor.legs with diamond_leggings[enchantments={protection:2}]
item replace entity @s armor.feet with diamond_boots[enchantments={protection:2}]
item replace entity @s weapon.offhand with shield
give @s diamond_sword[enchantments={sharpness:1}]
give @s diamond_axe[enchantments={efficiency:3}]
give @s cobweb 8
give @s diamond_pickaxe[enchantments={efficiency:3}]
give @s water_bucket
give @s oak_log 64
give @s cooked_beef 16

execute unless entity @s[name=ShiinaYumeka] run return fail
item replace entity ShiinaYumeka container.35 with writable_book
item replace entity ShiinaYumeka container.34 with written_book