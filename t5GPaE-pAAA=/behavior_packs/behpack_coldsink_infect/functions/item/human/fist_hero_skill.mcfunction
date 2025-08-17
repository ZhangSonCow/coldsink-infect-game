title @s actionbar §f已使用技能 §b【爆裂护盾】
event entity @s time_skill_true
tag @s add fist_hero_shield
tag @s add no_any_hurt
ride @s summon_rider coldsink:fist_hero_shield

tag @s add self
execute @s ~~~ playsound fist_hero_skill @a[tag=!self] ~~~
playsound fist_hero_skill.self @s
tag @s remove self