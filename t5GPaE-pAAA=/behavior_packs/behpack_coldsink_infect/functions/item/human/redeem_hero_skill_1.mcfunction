title @s actionbar §f已使用技能 §b【冰冻手雷】
event entity @s action_skill
tag @s add self
execute @s ~~~ playsound redeem_hero_skill_1 @a[tag=!self] ~~~
playsound redeem_hero_skill_1.self @s
tag @s remove self