#Happens when players hit the start boss button

#starting boss
execute if score active boss16 matches 0 run function link:boss/beginboss
execute if score active boss16 matches 2 run give @s black_wool

#remove advancements
advancement revoke @s only link:playerclicksstartboss16
advancement revoke @s only link:playerclicksstartboss162