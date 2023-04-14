# Amount of Lightning Strikes
scoreboard players set $rng_min bbl.rng 2
scoreboard players set $rng_max bbl.rng 5
function bb:lib/rng

scoreboard players operation $storm_strikes sqx.var = $value bbl.rng

function sqx.mw6:areas/white/lightning_strike

# Time interval in-between strikes 
scoreboard players set $rng_min bbl.rng 100
scoreboard players set $rng_max bbl.rng 400
function bb:lib/rng

scoreboard players operation $storm_timer sqx.var = $value bbl.rng