event entity @s coldsink:witch_cry_over

tag @s add sound_interval
scoreboard players reset @s idle_time

title @s actionbar §f已使用技能 §d【追魂】
effect @s speed 5 2 true
effect @s resistance 5 10 true
event entity @s time_skill_true

tag @s add self
execute @s ~~~ playsound witch.skill @a[tag=!self] ~~~
playsound witch.skill.self @s
tag @s remove self