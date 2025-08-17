execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§6【幽灵猎手】 §f["},{"selector":"@s"},{"text":"] §6已死亡"}]}
execute @s[tag=maper] ~~~ playsound hero_death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound hero_death @a[r=32]
summon coldsink:dead_human_hero
execute @s[tag=!maper] ~~~ event entity @e[type=coldsink:dead_human_hero,c=1] despawn

tag @s add dead
tag @s remove spawned