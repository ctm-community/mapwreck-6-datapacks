#This function is run on all players at the hz in the filename

#easter egg
scoreboard players set @a temp 0
execute store result score temp temp run clear @s[gamemode=!creative,gamemode=!spectator] fox_spawn_egg
execute if score temp temp matches 1.. run give @s stick{display:{Name:'{"text":"Dreaming of Tris_","color":"light_purple","italic":true}'},CustomModelData:1}
