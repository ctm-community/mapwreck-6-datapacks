#Happens when the player defeats the boss

#state
scoreboard players set active boss16 2
scoreboard players set bosstime boss16 0

#biome change
function link:boss/biomefunny


#bossbar
bossbar set a16boss players

#kill any remains
function link:boss/killboss