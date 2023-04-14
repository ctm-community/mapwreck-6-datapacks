# Switch Abilities based on Proximity
execute if entity @s[tag=!sqx.switched] if entity @a[distance=..5] run function sqx.mw6:mobs/elemental/switch_near
execute if entity @s[tag=sqx.switched] unless entity @a[distance=..5] run function sqx.mw6:mobs/elemental/switch_far

particle cloud ~ ~ ~ 0.3 0 0.3 0.03 1 normal