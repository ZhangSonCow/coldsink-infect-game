# execute @s[tag=maper,tag=游戏中] ~~~ tellraw @a {"rawtext":[{"text":"§e【Boomer】 ["},{"selector":"@s"},{"text":"] 死亡！"}]}
execute @s[tag=maper] ~~~ playsound boomer.death @a[tag=游戏中]
execute @s[tag=!maper] ~~~ playsound boomer.death @a[r=32]
summon coldsink:dead_boomer
execute @s[tag=!neutral] ~~~ event entity @e[type=coldsink:dead_boomer,c=1] despawn

tag @s add boomer_dead

execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=8] ~~~ playsound reward @a[tag=boomer_dead]
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=8] ~~~ title @a[tag=boomer_dead] actionbar §e爆炸成功造成§b一般§e伤害
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=5] ~~~ title @a[tag=boomer_dead] actionbar §e爆炸成功造成§6较高§e伤害
execute @s[tag=maper] ~~~ execute @e[family=player,family=!tool,type=!item,tag=!neutral,r=3] ~~~ title @a[tag=boomer_dead] actionbar §e爆炸成功造成§c高额§e伤害
execute @s[tag=maper] ~~~ damage @e[family=player,family=!tool,type=!item,tag=!neutral,r=8] 4 suicide
execute @s[tag=maper] ~~~ damage @e[family=player,family=!tool,type=!item,tag=!neutral,r=5] 5 suicide
execute @s[tag=maper] ~~~ damage @e[family=player,family=!tool,type=!item,tag=!neutral,r=3] 6 suicide
execute @s[tag=maper] ~~~ event entity @e[family=player,family=!tool,type=!item,tag=!neutral,r=8] coldsink:boomer_bile
execute @s[tag=maper] ~~~ title @a[family=player,family=!tool,tag=!neutral,r=8] actionbar §eBoomer在你附近爆炸！

execute @s[tag=!maper] ~~~ execute @e[tag=!boomer_dead,r=8] ~~~ playsound reward @a[tag=boomer_dead]
execute @s[tag=!maper] ~~~ execute @e[tag=!boomer_dead,r=8] ~~~ title @a[tag=boomer_dead] actionbar §e爆炸成功造成§b一般§e伤害
execute @s[tag=!maper] ~~~ execute @e[tag=!boomer_dead,r=5] ~~~ title @a[tag=boomer_dead] actionbar §e爆炸成功造成§6较高§e伤害
execute @s[tag=!maper] ~~~ execute @e[tag=!boomer_dead,r=3] ~~~ title @a[tag=boomer_dead] actionbar §e爆炸成功造成§c高额§e伤害
execute @s[tag=!maper] ~~~ damage @e[tag=!boomer_dead,r=8] 4 suicide
execute @s[tag=!maper] ~~~ damage @e[tag=!boomer_dead,r=5] 5 suicide
execute @s[tag=!maper] ~~~ damage @e[tag=!boomer_dead,r=3] 6 suicide
execute @s[tag=!maper] ~~~ event entity @e[tag=!boomer_dead,r=8] coldsink:boomer_bile
execute @s[tag=!maper] ~~~ title @a[tag=!boomer_dead,r=8] actionbar §eBoomer在你附近爆炸！

particle nacal_sdc:boomer_death_explode ~~~
particle nacal_sdc:boomer_death_bottom ~~~
particle nacal_sdc:boomer_death_bleed ~~~
