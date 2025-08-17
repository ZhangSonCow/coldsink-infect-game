execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ title @p[tag=maper] actionbar §d触发 §f惊扰§d 造成失明减速！
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ playsound reward @p[tag=maper]
execute @s[tag=maper] ~~~ effect @e[family=player,family=!tool,type=!item,tag=!neutral,r=10] slowness 4 1 true
execute @s[tag=maper] ~~~ effect @a[family=player,family=!tool,tag=!neutral,r=10] blindness 4 0 true
execute @s[tag=maper] ~~~ playsound witch.alarm @a[family=player,family=!tool,tag=!neutral,r=10]
execute @s[tag=maper] ~~~ title @a[family=player,family=!tool,tag=!neutral,r=10] actionbar §d受到 §fWitch §d惊扰控制效果！

tag @s[tag=!maper] add witch_self
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ title @p[tag=!maper] actionbar §d触发 §f惊扰§d 造成失明减速！
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ playsound reward @p[tag=!maper]
execute @s[tag=!maper] ~~~ effect @e[tag=!witch_self,family=!tool,r=10] slowness 4 1 true
execute @s[tag=!maper] ~~~ effect @a[tag=!witch_self,family=!tool,r=10] blindness 4 0 true
execute @s[tag=!maper] ~~~ playsound witch.alarm @a[tag=!witch_self,family=!tool,r=10]
execute @s[tag=!maper] ~~~ title @a[tag=!witch_self,family=!tool,r=10] actionbar §d受到 §fWitch §d惊扰控制效果！
tag @s[tag=!maper] remove witch_self

event entity @s action_clear