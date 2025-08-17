execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§6【救世主】 §f["},{"selector":"@s"},{"text":"] §6已死亡"}]}
execute @s[tag=maper] ~~~ playsound hero_death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound hero_death @a[r=32]
summon coldsink:dead_savior_hero
execute @s[tag=!maper] ~~~ event entity @e[type=coldsink:dead_savior_hero,c=1] despawn

tag @s add dead
tag @s remove spawned