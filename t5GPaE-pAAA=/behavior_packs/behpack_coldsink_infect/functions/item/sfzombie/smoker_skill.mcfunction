event entity @s smoker_tongue
event entity @s action_skill
title @s actionbar §f已使用技能 §6【缠绕】

tag @s add sound_interval
scoreboard players reset @s idle_time

scoreboard players add tongue_count smoker_time 1
scoreboard players operation @s smoker_time = tongue_count smoker_time
execute @s[scores={smoker_time=999..}] ~~~ scoreboard players set smoker_count smoker_time 0

execute @s ~~~ summon coldsink:smoker_ride_1

effect @s slowness 4 7 true
scoreboard players random @s wp_random 1 3
execute @s[scores={wp_random=1},family=smoker] ~~~ playsound smoker.skill_1 @a ~~~
execute @s[scores={wp_random=2},family=smoker] ~~~ playsound smoker.skill_2 @a ~~~
execute @s[scores={wp_random=3},family=smoker] ~~~ playsound smoker.skill_3 @a ~~~