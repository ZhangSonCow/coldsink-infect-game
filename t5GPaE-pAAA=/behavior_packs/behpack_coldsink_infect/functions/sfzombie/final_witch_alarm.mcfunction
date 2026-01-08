execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ execute @p[tag=maper] ~~~ title @s[tag=is_final_witch] actionbar §d触发 §f惊乱§d 造成伤害减速与失明！
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ execute @p[tag=maper] ~~~ title @s[tag=is_ghost_witch] actionbar §b触发 §f惊乱§b 造成伤害减速并扭曲视野！
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ execute @p[tag=maper] ~~~ title @s[tag=is_queen_witch] actionbar §2触发 §f惊乱§2 造成伤害减速并范围回复！
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=10,c=1] ~~~ playsound reward @p[tag=maper]
execute @s[tag=maper] ~~~ damage @e[family=player,family=!tool,type=!item,tag=!neutral,r=10] 8 suicide entity @s
execute @s[tag=maper] ~~~ effect @e[family=player,family=!tool,type=!item,tag=!neutral,r=10] slowness 4 1 true
execute @s[tag=maper,tag=is_final_witch] ~~~ effect @e[family=player,family=!tool,tag=!neutral,r=10] blindness 4 0 true
execute @s[tag=maper,tag=is_ghost_witch] ~~~ effect @e[family=player,family=!tool,tag=!neutral,r=10] nausea 10 10 true
execute @s[tag=maper,tag=is_queen_witch] ~~~ effect @e[family=monster,tag=!neutral,r=10] instant_health 1 2 true
execute @s[tag=maper] ~~~ playsound witch.alarm @a[family=player,family=!tool,tag=!neutral,r=10]
execute @s[tag=maper,tag=is_final_witch] ~~~ title @a[family=player,family=!tool,tag=!neutral,r=10] actionbar §d受到 §fWitch §d惊扰伤害控制效果！
execute @s[tag=maper,tag=is_ghost_witch] ~~~ title @a[family=player,family=!tool,tag=!neutral,r=10] actionbar §b受到 §fWitch §b惊扰伤害控制效果！
execute @s[tag=maper,tag=is_queen_witch] ~~~ title @a[family=player,family=!tool,tag=!neutral,r=10] actionbar §2受到 §fWitch §2惊扰伤害控制效果！

tag @s[tag=!maper] add witch_self
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ execute @p[tag=!maper] ~~~ title @s[tag=is_final_witch] actionbar §d触发 §f惊乱§d 造成伤害减速与失明！
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ execute @p[tag=!maper] ~~~ title @s[tag=is_ghost_witch] actionbar §b触发 §f惊乱§b 造成伤害减速并扭曲视野！
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ execute @p[tag=!maper] ~~~ title @s[tag=is_queen_witch] actionbar §2触发 §f惊乱§2 造成伤害减速并范围回复！
execute @s[tag=!maper] ~~~ execute @e[tag=!witch_self,family=!tool,r=10,c=1] ~~~ playsound reward @p[tag=!maper]
execute @s[tag=!maper] ~~~ damage @e[tag=!witch_self,family=!tool,r=10] 8 suicide entity @s
execute @s[tag=!maper] ~~~ effect @e[tag=!witch_self,family=!tool,r=10] slowness 4 1 true
execute @s[tag=!maper,tag=is_final_witch] ~~~ effect @e[tag=!witch_self,family=!tool,r=10] blindness 4 0 true
execute @s[tag=!maper,tag=is_ghost_witch] ~~~ effect @e[tag=!witch_self,family=!tool,r=10] nausea 10 10 true
execute @s[tag=!maper,tag=is_queen_witch] ~~~ effect @e[family=monster,r=10] instant_health 1 2 true
execute @s[tag=!maper] ~~~ playsound witch.alarm @a[tag=!witch_self,family=!tool,r=10]
execute @s[tag=!maper,tag=is_final_witch] ~~~ title @a[tag=!witch_self,family=!tool,r=10] actionbar §d受到 §fWitch §d惊扰伤害控制效果！
execute @s[tag=!maper,tag=is_ghost_witch] ~~~ title @a[tag=!witch_self,family=!tool,r=10] actionbar §b受到 §fWitch §b惊扰伤害控制效果！
execute @s[tag=!maper,tag=is_queen_witch] ~~~ title @a[tag=!witch_self,family=!tool,r=10] actionbar §2受到 §fWitch §2惊扰伤害控制效果！
tag @s[tag=!maper] remove witch_self

execute @s[scores={sfzombie_stay=8..},tag=is_final_witch] ~~~ particle nacal_sdc:witch_blast ~~0.8~
execute @s[scores={sfzombie_stay=8..},tag=is_ghost_witch] ~~~ particle nacal_sdc:ghost_witch_blast ~~0.8~
execute @s[scores={sfzombie_stay=8..},tag=is_queen_witch] ~~~ particle nacal_sdc:queen_witch_blast ~~0.8~
event entity @s action_clear