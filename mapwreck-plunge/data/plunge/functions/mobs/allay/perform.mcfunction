execute as @s[scores={Plunge.AllayPhase.=0..2}] run function plunge:mobs/allay/actions/potion
execute as @s[scores={Plunge.AllayPhase.=3..5}] run function plunge:mobs/allay/actions/summon
execute as @s[scores={Plunge.AllayPhase.=6..8}] run function plunge:mobs/allay/actions/fireball
execute as @s[scores={Plunge.AllayPhase.=9}] run function plunge:mobs/allay/actions/tnt
function plunge:mobs/allay/reset

# Prevent the allay from killing itself (usually)
effect give @s resistance 3 2