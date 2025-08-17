# execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§9【Hunter】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound hunter.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound hunter.death @a[r=32]
summon coldsink:dead_hunter
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_hunter,c=1] despawn
