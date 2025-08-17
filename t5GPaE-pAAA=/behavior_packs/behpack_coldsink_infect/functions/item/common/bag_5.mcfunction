title @s[tag=游戏中] actionbar §l§f已选择为 【背包⑤】
playsound random.orb @s[tag=游戏中]

clear @s[tag=游戏中]
replaceitem entity @s[scores={wp_five_1=1},tag=游戏中] slot.hotbar 0 coldsink:weapon_1 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[scores={wp_five_1=1},tag=游戏中] bullet_1 30
scoreboard players set @s[scores={wp_five_1=1},tag=游戏中] bullet_back 150
replaceitem entity @s[scores={wp_five_1=2},tag=游戏中] slot.hotbar 0 coldsink:weapon_2 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[scores={wp_five_1=2},tag=游戏中] bullet_2 50
scoreboard players set @s[scores={wp_five_1=2},tag=游戏中] bullet_back 200
replaceitem entity @s[scores={wp_five_1=3},tag=游戏中] slot.hotbar 0 coldsink:weapon_3 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[scores={wp_five_1=3},tag=游戏中] bullet_3 100
scoreboard players set @s[scores={wp_five_1=3},tag=游戏中] bullet_back 300
replaceitem entity @s[scores={wp_five_1=4},tag=游戏中] slot.hotbar 0 coldsink:weapon_4 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[scores={wp_five_1=4},tag=游戏中] bullet_4 10
scoreboard players set @s[scores={wp_five_1=4},tag=游戏中] bullet_back 60
replaceitem entity @s[scores={wp_five_1=5},tag=游戏中] slot.hotbar 0 coldsink:weapon_5 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[scores={wp_five_1=5},tag=游戏中] bullet_5 15
scoreboard players set @s[scores={wp_five_1=5},tag=游戏中] bullet_back 90
replaceitem entity @s[scores={wp_five_1=6},tag=游戏中] slot.hotbar 0 coldsink:weapon_7 1 0 {"item_lock":{"mode":"lock_in_slot"}}
scoreboard players set @s[scores={wp_five_1=6},tag=游戏中] bullet_7 35
scoreboard players set @s[scores={wp_five_1=6},tag=游戏中] bullet_back 140

replaceitem entity @s[scores={wp_five_2=1},tag=游戏中] slot.hotbar 1 coldsink:melee_1 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_2=2},tag=游戏中] slot.hotbar 1 coldsink:melee_2 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_2=3},tag=游戏中] slot.hotbar 1 coldsink:melee_3 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_2=4},tag=游戏中] slot.hotbar 1 coldsink:melee_4 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_2=5},tag=游戏中] slot.hotbar 1 coldsink:melee_5 1 0 {"item_lock":{"mode":"lock_in_slot"}}

replaceitem entity @s[scores={wp_five_3=1},tag=游戏中] slot.hotbar 2 nacal_tac:detect 3 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_3=2},tag=游戏中] slot.hotbar 2 nacal_tac:raid 1 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_3=3},tag=游戏中] slot.hotbar 2 nacal_tac:force 2 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_3=4},tag=游戏中] slot.hotbar 2 nacal_tac:mineset 3 0 {"item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={wp_five_3=5},tag=游戏中] slot.hotbar 2 nacal_tac:healarea 2 0 {"item_lock":{"mode":"lock_in_slot"}}