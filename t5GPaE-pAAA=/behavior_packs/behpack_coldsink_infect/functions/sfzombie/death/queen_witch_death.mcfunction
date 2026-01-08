execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§2【妖皇女巫】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound witch.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound witch.death @a[r=32]
summon coldsink:dead_queen_witch
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_queen_witch,c=1] despawn
