#HAppens when boss ends due to player death or leaving


#state
scoreboard players set active boss16 0
scoreboard players set bosstime boss16 0
scoreboard players set spawners boss16 0
scoreboard players set spawnertime boss16 0
scoreboard players set digup boss16 0

#remove spawners
function link:boss/yeetspawners

#bring back displays
function link:area16/updatebossdisplays

#biome change
function link:boss/biomenormal

#bossbar
bossbar set a16boss players

#kill boss
function link:boss/killboss

#foreload
forceload remove ~20 ~20 ~-20 ~-20
