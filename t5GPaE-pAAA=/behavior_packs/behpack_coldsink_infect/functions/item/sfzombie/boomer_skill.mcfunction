event entity @s action_skill
title @s actionbar §f已使用技能 §e【呕吐】

tag @s add sound_interval
scoreboard players reset @s idle_time

scoreboard players random @s wp_random 1 3
tag @s add self
execute @s[family=boomer,scores={wp_random=1}] ~~~ playsound boomer.skill_1 @a[tag=!self] ~~~
execute @s[family=boomer,scores={wp_random=2}] ~~~ playsound boomer.skill_2 @a[tag=!self] ~~~
execute @s[family=boomer,scores={wp_random=3}] ~~~ playsound boomer.skill_3 @a[tag=!self] ~~~
playsound boomer.skill_1.self @s[family=boomer,scores={wp_random=1}]
playsound boomer.skill_2.self @s[family=boomer,scores={wp_random=2}]
playsound boomer.skill_3.self @s[family=boomer,scores={wp_random=3}]
tag @s remove self