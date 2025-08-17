# execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§2【Spitter】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound spitter.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound spitter.death @a[r=32]
summon coldsink:dead_spitter
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_spitter,c=1] despawn

summon coldsink:spitter_acid
scoreboard players operation @e[type=coldsink:spitter_acid,c=1] spitter_time = @s spitter_time
execute @s[tag=maper] ~~~ tag @e[type=coldsink:spitter_acid,c=1] add maper
