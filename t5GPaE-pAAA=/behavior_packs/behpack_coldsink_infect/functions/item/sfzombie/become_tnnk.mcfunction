title @s[tag=is_final_tnnk] actionbar §b请令物品栏 §e第一、八、九格 §b与 §e盔甲栏 §b为空
gamerule keepinventory true
clear @s[tag=!is_final_tnnk] coldsink:empty_test
replaceitem entity @s[tag=!is_final_tnnk] slot.hotbar 0 keep coldsink:empty_test
replaceitem entity @s[tag=!is_final_tnnk] slot.hotbar 7 keep coldsink:empty_test
replaceitem entity @s[tag=!is_final_tnnk] slot.hotbar 8 keep coldsink:empty_test
scoreboard objectives add bool dummy bool
scoreboard players set @s[tag=!is_final_tnnk] bool 0
replaceitem entity @s[tag=!is_final_tnnk] slot.armor.head 1 keep coldsink:empty_head 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=!is_final_tnnk] slot.armor.chest 1 keep coldsink:empty_chest 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=!is_final_tnnk] slot.armor.legs 1 keep coldsink:empty_legs 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=!is_final_tnnk] slot.armor.feet 1 keep coldsink:empty_feet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[tag=!is_final_tnnk,hasitem=[{item=coldsink:empty_test,quantity=3},{item=coldsink:empty_head},{item=coldsink:empty_chest},{item=coldsink:empty_legs},{item=coldsink:empty_feet}]] bool 1
clear @s[tag=!is_final_tnnk] coldsink:empty_test
clear @s[scores={bool=0},tag=!is_final_tnnk] coldsink:empty_head
clear @s[scores={bool=0},tag=!is_final_tnnk] coldsink:empty_chest
clear @s[scores={bool=0},tag=!is_final_tnnk] coldsink:empty_legs
clear @s[scores={bool=0},tag=!is_final_tnnk] coldsink:empty_feet

tag @s[tag=is_tnnk,tag=!is_final_tnnk] add back
title @s[scores={bool=1},tag=!is_tnnk,m=!c] actionbar §f已扮演 §cTαnk
replaceitem entity @s[scores={bool=1},tag=!is_tnnk] slot.weapon.mainhand 1 coldsink:become_tnnk 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[tag=!maper,scores={bool=1},tag=!is_tnnk] {"rawtext":[{"text":"§e再次使用变身器 §b即可恢复为人类"}]}

event entity @s[scores={bool=1},tag=!is_tnnk,m=!c] coldsink:become_tnnk
title @s[tag=!maper,scores={bool=0},tag=!is_tnnk,m=!c] actionbar §b请令物品栏 §e第一、八、九格 §b与 §e盔甲栏 §b为空
title @s[tag=!is_tnnk,m=c] actionbar §f已扮演 §cTαnk
tellraw @s[tag=!maper,scores={bool=0},tag=!is_tnnk,m=c] {"rawtext":[{"text":"§e再次使用变身器 §b即可恢复为人类"}]}
event entity @s[tag=!is_tnnk,m=c] coldsink:become_tnnk
clear @s[tag=is_tnnk,tag=!is_final_tnnk,m=c] coldsink:become_tnnk
give @s[tag=is_tnnk,tag=!is_final_tnnk,m=c] coldsink:become_tnnk 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[tag=is_tnnk,tag=!is_final_tnnk,m=c] slot.armor.head 1 air
replaceitem entity @s[tag=is_tnnk,tag=!is_final_tnnk,m=c] slot.armor.chest 1 air
replaceitem entity @s[tag=is_tnnk,tag=!is_final_tnnk,m=c] slot.armor.legs 1 air
replaceitem entity @s[tag=is_tnnk,tag=!is_final_tnnk,m=c] slot.armor.feet 1 air

event entity @s[tag=back,tag=!is_final_tnnk] coldsink:default
title @s[tag=back,tag=!is_final_tnnk] actionbar 已变回人类
clear @s[tag=back,tag=!is_final_tnnk] coldsink:big_attack
clear @s[tag=back,tag=!is_final_tnnk] coldsink:tnnk_skill
clear @s[tag=back,tag=!is_final_tnnk] coldsink:tnnk_howl_skill
clear @s[tag=back,tag=!is_final_tnnk] coldsink:final_tnnk_skill
replaceitem entity @s[tag=back,tag=!is_final_tnnk] slot.weapon.mainhand 1 coldsink:become_tnnk 1 0
tag @s[tag=!is_final_tnnk] remove back

event entity @s[tag=maper] coldsink:become_tnnk
title @s[tag=maper] actionbar §f已扮演 §cTαnk