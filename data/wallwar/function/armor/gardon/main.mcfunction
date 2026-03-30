
execute unless block ~ ~1 ~ minecraft:air run return fail
execute if items entity @s weapon.offhand sugar_cane run return run function wallwar:armor/gardon/sugar

execute unless block ~ ~ ~ minecraft:farmland run return fail
execute if items entity @s weapon.offhand melon_seeds run return run function wallwar:armor/gardon/melon
execute if items entity @s weapon.offhand pumpkin_seeds run return run function wallwar:armor/gardon/pumpkin
execute unless items entity @s weapon.offhand #villager_plantable_seeds run return fail

execute if items entity @s weapon.offhand wheat_seeds run return run function wallwar:armor/gardon/wheat
execute if items entity @s weapon.offhand potato run return run function wallwar:armor/gardon/potato
execute if items entity @s weapon.offhand carrot run return run function wallwar:armor/gardon/carrot
execute if items entity @s weapon.offhand beetroot_seeds run return run function wallwar:armor/gardon/beetroot
