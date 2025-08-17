# execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§e【smoker】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound smoker.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound smoker.death @a[r=32]
summon coldsink:dead_smoker
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_smoker,c=1] despawn

summon coldsink:smoker_smoke

scoreboard players operation @e[type=coldsink:smoker_ride_2] smoker_check = @s smoker_time
execute @e[type=coldsink:smoker_ride_2] ~~~ scoreboard players operation @s smoker_check -= @s smoker_time
event entity @e[type=coldsink:smoker_ride_2,scores={smoker_check=0}] godie
