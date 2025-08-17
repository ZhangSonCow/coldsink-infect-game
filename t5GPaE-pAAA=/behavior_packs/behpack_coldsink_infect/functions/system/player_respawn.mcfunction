execute @e[family=normal_human,scores={player_respawn=1}] ~~~ function human/respawn/normal_human_respawn
execute @e[family=hunter,scores={player_respawn=1}] ~~~ function sfzombie/respawn/hunter_respawn
execute @e[family=spitter,scores={player_respawn=1}] ~~~ function sfzombie/respawn/spitter_respawn
execute @e[family=charger,scores={player_respawn=1}] ~~~ function sfzombie/respawn/charger_respawn
execute @e[family=jockey,scores={player_respawn=1}] ~~~ function sfzombie/respawn/jockey_respawn
execute @e[family=boomer,scores={player_respawn=1}] ~~~ function sfzombie/respawn/boomer_respawn
execute @e[family=smoker,scores={player_respawn=1}] ~~~ function sfzombie/respawn/smoker_respawn
execute @e[family=tnnk,scores={player_respawn=1}] ~~~ function sfzombie/respawn/tnnk_respawn
execute @e[family=witch,scores={player_respawn=1}] ~~~ function sfzombie/respawn/witch_respawn
execute @e[family=final_tnnk,scores={player_respawn=1}] ~~~ function sfzombie/respawn/final_tnnk_respawn
execute @e[family=final_witch,scores={player_respawn=1}] ~~~ function sfzombie/respawn/final_witch_respawn
execute @e[family=human_hero,scores={player_respawn=1}] ~~~ function human/respawn/human_hero_respawn
execute @e[family=final_hero,scores={player_respawn=1}] ~~~ function human/respawn/final_hero_respawn
execute @e[family=savior_hero,scores={player_respawn=1}] ~~~ function human/respawn/savior_hero_respawn
execute @e[family=machine_hero,scores={player_respawn=1}] ~~~ function human/respawn/machine_hero_respawn
execute @e[family=space_hero,scores={player_respawn=1}] ~~~ function human/respawn/space_hero_respawn
execute @e[family=redeem_hero,scores={player_respawn=1}] ~~~ function human/respawn/redeem_hero_respawn
execute @e[family=fist_hero,scores={player_respawn=1}] ~~~ function human/respawn/fist_hero_respawn

tag @e[tag=melee_damage] remove melee_damage
tag @e[tag=machine_back] remove machine_back

scoreboard players set @a player_respawn 1
scoreboard players set @e[type=player] player_respawn 0
