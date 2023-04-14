# Strike Location
scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 33
function bb:lib/rng

execute if score $value bbl.rng matches 1 positioned 167 0 -49 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 2 positioned 169 0 -77 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 3 positioned 208 0 -63 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 4 positioned 234 0 -87 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 5 positioned 268 0 -74 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 6 positioned 294 0 -58 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 7 positioned 290 0 -80 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 8 positioned 287 0 -28 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 9 positioned 283 0 27 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 10 positioned 262 0 31 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 11 positioned 227 0 25 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 12 positioned 200 0 34 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 13 positioned 270 0 -43 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 14 positioned 275 0 -20 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 15 positioned 248 0 1 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 16 positioned 231 0 7 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 17 positioned 211 0 -9 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 18 positioned 195 0 -26 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 19 positioned 177 0 -22 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 20 positioned 182 0 -39 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 21 positioned 163 0 -46 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 22 positioned 244 0 -23 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 23 positioned 226 0 -55 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 24 positioned 182 25 -51 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 25 positioned 167 21 -28 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 26 positioned 194 24 -13 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 27 positioned 221 20 -4 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 28 positioned 247 16 -14 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 29 positioned 238 15 -50 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 30 positioned 253 19 -65 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 31 positioned 283 13 -72 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 32 positioned 263 19 12 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~
execute if score $value bbl.rng matches 33 positioned 285 24 13 unless entity @a[distance=..5] run summon lightning_bolt ~ ~ ~

# Recurse if available strikes remaining
scoreboard players remove $storm_strikes sqx.var 1
execute if score $storm_strikes sqx.var matches 1.. run function sqx.mw6:areas/white/lightning_strike