# execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§c【Tαnk】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound tank.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound tank.death @a[r=32]
summon coldsink:dead_tnnk
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_tnnk,c=1] despawn
