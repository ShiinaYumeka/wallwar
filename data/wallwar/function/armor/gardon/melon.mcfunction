

execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:1}]] run setblock ~ ~1 ~ minecraft:melon_stem[age=3]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:2}]] run setblock ~ ~1 ~ minecraft:melon_stem[age=5]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:3}]] run setblock ~ ~1 ~ minecraft:melon_stem[age=7]

playsound item.crop.plant player @a
clear @s melon_seeds 1
