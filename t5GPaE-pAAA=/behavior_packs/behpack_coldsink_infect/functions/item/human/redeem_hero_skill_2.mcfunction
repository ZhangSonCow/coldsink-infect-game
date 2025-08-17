title @s actionbar §f已使用技能 §b【治愈血清】
event entity @s action_skill_other
tag @s add self
execute @s ~~~ playsound redeem_hero_skill_2 @a[tag=!self] ~~~
playsound redeem_hero_skill_2.self @s
tag @s remove self