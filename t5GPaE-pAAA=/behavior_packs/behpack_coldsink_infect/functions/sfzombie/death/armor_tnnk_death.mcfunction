execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§6【装甲泰坦】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound tank.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound tank.death @a[r=32]
summon coldsink:dead_armor_tnnk
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_armor_tnnk,c=1] despawn