effect @s slowness 1 7 true
title @s[tag=is_tnnk] actionbar §c【咆哮】 §f未命中目标
title @s[tag=is_final_tnnk] actionbar §c【怒吼】 §f未命中目标

ride @e[type=coldsink:human_ai,r=8] summon_rider coldsink:tnnk_howl_tool
event entity @e[type=coldsink:human_ai,r=8] stop_shoot_run

scoreboard players random @s wp_random 1 3
execute @s[scores={wp_random=1}] ~~~ playsound tank.howl_1 @a ~~~
execute @s[scores={wp_random=2}] ~~~ playsound tank.howl_2 @a ~~~
execute @s[scores={wp_random=3}] ~~~ playsound tank.howl_3 @a ~~~

# 地图
execute @s[tag=maper] ~~~ effect @e[family=player,family=!tool,type=!item,tag=!neutral,r=8] slowness 4 4 true
execute @s[tag=maper] ~~~ camerashake add @a[family=player,family=!tool,tag=!neutral,r=8] 0.5 2 rotational
execute @s[tag=maper] ~~~ event entity @e[family=player,family=!tool,type=!item,tag=!neutral,tag=!is_hero,r=8] coldsink:tnnk_howl_control
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=8,c=1] ~~~ title @p[family=tnnk,tag=maper,r=8] actionbar §c成功控制目标！
execute @s[tag=maper] ~~~ event entity @s action_skill_other

# 模组
tag @s[tag=!maper] add tnnk_self
execute @s[tag=!maper] ~~~ effect @e[tag=!tnnk_self,r=8] slowness 4 4 true
execute @s[tag=!maper] ~~~ camerashake add @a[tag=!tnnk_self,r=8] 0.5 2 rotational
execute @s[tag=!maper] ~~~ event entity @e[tag=!tnnk_self,tag=!is_hero,r=8] coldsink:tnnk_howl_control
execute @s[tag=!maper] ~~~ execute @e[tag=!tnnk_self,r=8,c=1] ~~~ title @p[family=tnnk,tag=!maper,r=8] actionbar §c成功控制目标！
execute @s[tag=!maper] ~~~ event entity @s action_skill_other