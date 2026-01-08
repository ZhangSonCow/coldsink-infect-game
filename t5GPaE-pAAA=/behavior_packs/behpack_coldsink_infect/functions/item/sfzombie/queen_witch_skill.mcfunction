event entity @s coldsink:witch_cry_over

tag @s add sound_interval
scoreboard players reset @s idle_time

title @s actionbar §f已使用技能 §2【领域】
event entity @s time_skill_true

tag @s add self
execute @s ~~~ playsound final.witch.skill @a[tag=!self] ~~~
playsound queen.witch.skill.self @s
tag @s remove self