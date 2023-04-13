#Happens when players hit the start boss button

#peaceful detection
scoreboard players set temp temp 0
execute store result score temp temp run difficulty

#starting boss
execute if score active boss16 matches 0 if score temp temp matches 1.. run function link:boss/beginboss
execute if score active boss16 matches 0 unless score temp temp matches 1.. run say Yo! It's peaceful, the boss won't work.
execute if score active boss16 matches 2 run give @s black_wool

#remove advancements
advancement revoke @s only link:playerclicksstartboss16
advancement revoke @s only link:playerclicksstartboss162