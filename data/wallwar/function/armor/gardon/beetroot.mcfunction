

execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:1}]] run setblock ~ ~1 ~ minecraft:beetroots[age=0]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:2}]] run setblock ~ ~1 ~ minecraft:beetroots[age=1]
execute if items entity @s armor.feet #enchantable/foot_armor[enchantments~[{"enchantments":"gardon",levels:3}]] run setblock ~ ~1 ~ minecraft:beetroots[age=2]

playsound item.crop.plant player @a
clear @s beetroot_seeds 1
