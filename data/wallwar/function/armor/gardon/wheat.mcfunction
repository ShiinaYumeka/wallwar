

execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:1}]] run setblock ~ ~1 ~ minecraft:wheat[age=0]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:2}]] run setblock ~ ~1 ~ minecraft:wheat[age=2]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:3}]] run setblock ~ ~1 ~ minecraft:wheat[age=4]

playsound item.crop.plant player @a
clear @s wheat_seeds 1
