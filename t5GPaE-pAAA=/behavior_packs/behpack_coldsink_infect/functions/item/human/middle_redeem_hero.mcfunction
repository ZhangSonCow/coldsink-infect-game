clear @s coldsink:middle_redeem_hero
clear @s coldsink:middle_space_hero

event entity @s coldsink:become_redeem_hero
title @s[tag=!back] actionbar §f已扮演 §b救赎猎手
clear @s coldsink:become_savior_hero 0 1
give @s coldsink:become_redeem_hero 1 0 {"item_lock":{"mode":"lock_in_inventory"}}