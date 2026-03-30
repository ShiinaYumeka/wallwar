
summon item ~ ~ ~ {Tags:["new"],Item:{id:wither_skeleton_skull,components:{enchantments:{protection:7}},count:1b}}
execute on attacker at @s run tp @e[tag=new] ~ ~ ~
tag @e[tag=new] remove new