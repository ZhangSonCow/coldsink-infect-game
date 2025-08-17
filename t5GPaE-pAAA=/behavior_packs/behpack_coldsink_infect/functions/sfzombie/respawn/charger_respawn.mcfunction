event entity @s coldsink:become_charger
event entity @s action_clear

title @s[tag=maper] actionbar §4已复活

scoreboard objectives add sfzombie_update dummy sfzombie_update
scoreboard players set @s[tag=maper] sfzombie_update 0

event entity @s[tag=maper,tag=游戏中,tag=melee_damage,tag=!melee_no_kill] game_audience

tag @s[tag=maper] add respawn

effect @s[tag=!maper] health_boost 99999 12 true
effect @s[tag=!maper] instant_health 1 10 true

tag @s add respawn_give