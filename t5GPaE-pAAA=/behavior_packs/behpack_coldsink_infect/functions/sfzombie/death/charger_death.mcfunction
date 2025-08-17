# execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§7【Charger】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound charger.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound charger.death @a[r=32]
summon coldsink:dead_charger
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_charger,c=1] despawn
