

execute unless entity @a[team=waiting] run return run function wallwar:system/random_teamup/main/end

execute unless entity @a[tag=chose] run return run tellraw @a [{"translate":"[系统]: "},{selector:"@s"},{"translate":"尝试邀请滚木加入队伍，但是失败了"}]

execute as @a[tag=chose] run function wallwar:system/random_teamup/choose/join
function wallwar:system/random_teamup/main/next
