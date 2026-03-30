

execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:1}]] run setblock ~ ~ ~ minecraft:sugar_cane[age=2]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:2}]] run setblock ~ ~ ~ minecraft:sugar_cane[age=5]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:3}]] run setblock ~ ~ ~ minecraft:sugar_cane[age=7]

playsound item.crop.plant player @a
clear @s sugar_cane 1
