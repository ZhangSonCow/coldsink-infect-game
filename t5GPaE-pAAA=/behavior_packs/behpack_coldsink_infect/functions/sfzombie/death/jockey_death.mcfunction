# execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§3【Jockey】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound jockey.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound jockey.death @a[r=32]
summon coldsink:dead_jockey
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_jockey,c=1] despawn

execute @s[tag=jockey_skill] ~~~ event entity @e[tag=jockey_riding,c=1] coldsink:jockey_control_over
execute @s[tag=jockey_skill] ~~~ stopsound @a[r=18] jockey.skill
stopsound @s[tag=jockey_skill] jockey.skill.self
tag @s remove jockey_skill
