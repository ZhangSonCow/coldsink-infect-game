gamerule keepinventory true
clear @s coldsink:empty_test
replaceitem entity @s slot.hotbar 0 keep coldsink:empty_test
replaceitem entity @s slot.hotbar 8 keep coldsink:empty_test
scoreboard objectives add bool dummy bool
scoreboard players set @s bool 0
replaceitem entity @s slot.armor.head 1 keep coldsink:empty_head 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.armor.chest 1 keep coldsink:empty_chest 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.armor.legs 1 keep coldsink:empty_legs 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.armor.feet 1 keep coldsink:empty_feet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[hasitem=[{item=coldsink:empty_test,quantity=2},{item=coldsink:empty_head},{item=coldsink:empty_chest},{item=coldsink:empty_legs},{item=coldsink:empty_feet}]] bool 1
clear @s coldsink:empty_test
clear @s[scores={bool=0}] coldsink:empty_head
clear @s[scores={bool=0}] coldsink:empty_chest
clear @s[scores={bool=0}] coldsink:empty_legs
clear @s[scores={bool=0}] coldsink:empty_feet

tag @s[tag=is_fist_hero] add back
title @s[scores={bool=1},tag=!is_fist_hero,m=!c] actionbar §f已扮演 §b圣拳猎手
replaceitem entity @s[scores={bool=1},tag=!is_fist_hero] slot.weapon.mainhand 1 coldsink:become_fist_hero 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[tag=!maper,scores={bool=1},tag=!is_fist_hero] {"rawtext":[{"text":"§e再次使用变身器 §b即可恢复为人类"}]}

event entity @s[scores={bool=1},tag=!is_fist_hero,m=!c] coldsink:become_fist_hero
title @s[tag=!maper,scores={bool=0},tag=!is_fist_hero,m=!c] actionbar §b请令物品栏 §e第一、九格 §b与 §e盔甲栏 §b为空
title @s[tag=!is_fist_hero,m=c] actionbar §f已扮演 §b圣拳猎手
tellraw @s[tag=!maper,scores={bool=0},tag=!is_fist_hero,m=c] {"rawtext":[{"text":"§e再次使用变身器 §b即可恢复为人类"}]}
event entity @s[tag=!is_fist_hero,m=c] coldsink:become_fist_hero
clear @s[tag=is_fist_hero,m=c] coldsink:become_fist_hero
give @s[tag=is_fist_hero,m=c] coldsink:become_fist_hero 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[tag=is_fist_hero,m=c] slot.armor.head 1 air
replaceitem entity @s[tag=is_fist_hero,m=c] slot.armor.chest 1 air
replaceitem entity @s[tag=is_fist_hero,m=c] slot.armor.legs 1 air
replaceitem entity @s[tag=is_fist_hero,m=c] slot.armor.feet 1 air

event entity @s[tag=back] coldsink:default
title @s[tag=back] actionbar 已变回人类
clear @s[tag=back] coldsink:fist_hero_weapon
replaceitem entity @s[tag=back] slot.hotbar 8 air
replaceitem entity @s[tag=back] slot.weapon.mainhand 1 coldsink:become_fist_hero 1 0
tag @s remove back

event entity @s[tag=maper] coldsink:become_fist_hero
title @s[tag=maper] actionbar §f已扮演 §b圣拳猎手