execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§b【圣拳猎手】 §f["},{"selector":"@s"},{"text":"] §b已死亡"}]}
execute @s[tag=maper] ~~~ playsound hero_death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound hero_death @a[r=32]
summon coldsink:dead_fist_hero
execute @s[tag=!maper] ~~~ event entity @e[type=coldsink:dead_fist_hero,c=1] despawn

tag @s add dead
tag @s remove spawned