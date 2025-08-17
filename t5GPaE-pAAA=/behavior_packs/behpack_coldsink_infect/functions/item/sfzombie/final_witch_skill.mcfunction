event entity @s coldsink:witch_cry_over

tag @s add sound_interval
scoreboard players reset @s idle_time

title @s actionbar §f已使用技能 §d【索魂】
effect @s speed 8 2 true
effect @s regeneration 8 3 true
event entity @s time_skill_true

tag @s add self
execute @s ~~~ playsound final.witch.skill @a[tag=!self] ~~~
playsound final.witch.skill.self @s
tag @s remove self