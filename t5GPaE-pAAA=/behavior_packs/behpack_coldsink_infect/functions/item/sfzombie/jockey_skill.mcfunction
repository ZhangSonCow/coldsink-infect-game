tag @s add sound_interval
scoreboard players reset @s idle_time

event entity @s action_skill
tag @s add jockey_skill
title @s actionbar §f已使用技能 §3【乘骑】
ride @s summon_ride coldsink:jockey_ride
execute @s[tag=maper] ~~~ tag @e[type=coldsink:jockey_ride,c=1] add maper
tag @s add jockey_self
execute @s ~~~ playsound jockey.skill @a[tag=!jockey_self] ~~~
playsound jockey.skill.self @s
tag @s remove jockey_self

replaceitem entity @s slot.hotbar 7 coldsink:jockey_exit 1 0 {"item_lock":{"mode":"lock_in_slot"}}
clear @s[tag=maper] coldsink:become_hunter
clear @s[tag=maper] coldsink:become_spitter
clear @s[tag=maper] coldsink:become_charger
clear @s[tag=maper] coldsink:become_boomer
clear @s[tag=maper] coldsink:become_smoker