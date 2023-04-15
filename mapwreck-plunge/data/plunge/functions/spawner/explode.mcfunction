setblock ~ ~ ~ air
summon tnt ~ ~ ~ {Fuse:0}
effect give @a[distance=..15] speed 5 1
effect give @a[distance=..15] haste 5 1
playsound block.beacon.activate block @a[distance=..15] ~ ~ ~ 2
kill @s