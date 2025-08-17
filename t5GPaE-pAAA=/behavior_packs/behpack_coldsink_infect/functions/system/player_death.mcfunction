scoreboard players set @a[scores={player_death=!2}] player_death 0
scoreboard players set @e[type=player] player_death 1

execute @a[family=normal_human,scores={player_death=0}] ~~~ function human/death/normal_human_death
execute @a[family=hunter,scores={player_death=0}] ~~~ function sfzombie/death/hunter_death
execute @a[family=spitter,scores={player_death=0}] ~~~ function sfzombie/death/spitter_death
execute @a[family=charger,scores={player_death=0}] ~~~ function sfzombie/death/charger_death
execute @a[family=jockey,scores={player_death=0}] ~~~ function sfzombie/death/jockey_death
execute @a[family=boomer,scores={player_death=0}] ~~~ function sfzombie/death/boomer_death
execute @a[family=smoker,scores={player_death=0}] ~~~ function sfzombie/death/smoker_death
execute @a[family=tnnk,scores={player_death=0}] ~~~ function sfzombie/death/tnnk_death
execute @a[family=witch,scores={player_death=0}] ~~~ function sfzombie/death/witch_death
execute @a[family=final_tnnk,scores={player_death=0}] ~~~ function sfzombie/death/final_tnnk_death
execute @a[family=final_witch,scores={player_death=0}] ~~~ function sfzombie/death/final_witch_death
execute @a[family=human_hero,scores={player_death=0}] ~~~ function human/death/human_hero_death
execute @a[family=final_hero,scores={player_death=0}] ~~~ function human/death/final_hero_death
execute @a[family=savior_hero,scores={player_death=0}] ~~~ function human/death/savior_hero_death
execute @a[family=machine_hero,scores={player_death=0}] ~~~ function human/death/machine_hero_death
execute @a[family=space_hero,scores={player_death=0}] ~~~ function human/death/space_hero_death
execute @a[family=redeem_hero,scores={player_death=0}] ~~~ function human/death/redeem_hero_death
execute @a[family=fist_hero,scores={player_death=0}] ~~~ function human/death/fist_hero_death

event entity @a[scores={player_death=0}] freeze_no
inputpermission set @a[scores={player_death=0}] camera enabled
inputpermission set @a[scores={player_death=0}] movement enabled

scoreboard players set @a[scores={player_death=0}] player_death 2
