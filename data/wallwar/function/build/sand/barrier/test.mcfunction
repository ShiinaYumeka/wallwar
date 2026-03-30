

execute if score @s tid matches 2 at 0-0-0-0-1 positioned ~-225 -64 ~-225 as @a[gamemode=!spectator,team=!green,dx=223,dy=300,dz=223] run function wallwar:build/sand/barrier/effect
execute if score @s tid matches 3 at 0-0-0-0-1 positioned ~-225 -64 ~1 as @a[gamemode=!spectator,team=!yellow,dx=223,dy=300,dz=223] run function wallwar:build/sand/barrier/effect
execute if score @s tid matches 1 at 0-0-0-0-1 positioned ~1 -64 ~-225 as @a[gamemode=!spectator,team=!blue,dx=223,dy=300,dz=223] run function wallwar:build/sand/barrier/effect
execute if score @s tid matches 4 at 0-0-0-0-1 positioned ~1 -64 ~1 as @a[gamemode=!spectator,team=!red,dx=223,dy=300,dz=223] run function wallwar:build/sand/barrier/effect

