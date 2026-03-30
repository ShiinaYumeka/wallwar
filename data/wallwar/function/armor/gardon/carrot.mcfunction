

execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:1}]] run setblock ~ ~1 ~ minecraft:carrots[age=0]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:2}]] run setblock ~ ~1 ~ minecraft:carrots[age=2]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:3}]] run setblock ~ ~1 ~ minecraft:carrots[age=4]

playsound item.crop.plant player @a
clear @s carrot 1
