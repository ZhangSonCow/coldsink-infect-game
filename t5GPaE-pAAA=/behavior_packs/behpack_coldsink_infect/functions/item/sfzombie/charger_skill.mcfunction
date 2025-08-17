gamerule sendcommandfeedback false

event entity @s action_skill
title @s actionbar §f已使用技能 §7【冲撞】

tag @s add sound_interval
scoreboard players reset @s idle_time

scoreboard players add charger_count charger_time 1
scoreboard players operation @s charger_time = charger_count charger_time
execute @s[scores={charger_time=999..}] ~~~ scoreboard players set charger_count charger_time 0
tp @s ~~~ ~ 0

tag @s add charger_charging
summon coldsink:charger_charge ^^^0.8
execute @s[tag=maper] ~~~ tag @e[type=coldsink:charger_charge,c=1] add maper
tag @s add charger_self
playsound charger.skill @a[tag=!charger_self] ~~~
playsound charger.skill.self @s[family=charger]
tag @s[family=charger] remove charger_self

clear @s[tag=maper] coldsink:become_hunter
clear @s[tag=maper] coldsink:become_spitter
clear @s[tag=maper] coldsink:become_jockey
clear @s[tag=maper] coldsink:become_boomer
clear @s[tag=maper] coldsink:become_smoker