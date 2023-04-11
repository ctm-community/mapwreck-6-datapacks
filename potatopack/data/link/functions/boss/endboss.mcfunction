#HAppens when boss ends due to player death or leaving


#state
scoreboard players set active boss16 0
scoreboard players set bosstime boss16 0

#bring back displays
function link:area16/updatebossdisplays

#biome change
function link:boss/biomenormal

#bossbar
bossbar set a16boss players

#kill boss
function link:boss/killboss