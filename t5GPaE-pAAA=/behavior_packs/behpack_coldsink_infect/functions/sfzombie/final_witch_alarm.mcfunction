execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ title @p[tag=maper] actionbar §d触发 §f惊乱§d 造成失明伤害减速！
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ playsound reward @p[tag=maper]
execute @s[tag=maper] ~~~ damage @e[family=player,family=!tool,type=!item,tag=!neutral,r=10] 8 suicide
execute @s[tag=maper] ~~~ effect @e[family=player,family=!tool,type=!item,tag=!neutral,r=10] slowness 4 1 true
execute @s[tag=maper] ~~~ effect @a[family=player,family=!tool,tag=!neutral,r=10] blindness 4 0 true
execute @s[tag=maper] ~~~ playsound witch.alarm @a[family=player,family=!tool,tag=!neutral,r=10]
execute @s[tag=maper] ~~~ title @a[family=player,family=!tool,tag=!neutral,r=10] actionbar §d受到 §fWitch §d惊扰伤害控制效果！

tag @s[tag=!maper] add witch_self
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ title @p[tag=!maper] actionbar §d触发 §f惊乱§d 造成失明伤害减速！
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ playsound reward @p[tag=!maper]
execute @s[tag=!maper] ~~~ damage @e[tag=!witch_self,family=!tool,r=10] 8 suicide
execute @s[tag=!maper] ~~~ effect @e[tag=!witch_self,family=!tool,r=10] slowness 4 1 true
execute @s[tag=!maper] ~~~ effect @a[tag=!witch_self,family=!tool,r=10] blindness 4 0 true
execute @s[tag=!maper] ~~~ playsound witch.alarm @a[tag=!witch_self,family=!tool,r=10]
execute @s[tag=!maper] ~~~ title @a[tag=!witch_self,family=!tool,r=10] actionbar §d受到 §fWitch §d惊扰伤害控制效果！
tag @s[tag=!maper] remove witch_self

execute @s[scores={sfzombie_stay=8..}] ~~~ particle nacal_sdc:witch_blast ~~0.8~
event entity @s action_clear