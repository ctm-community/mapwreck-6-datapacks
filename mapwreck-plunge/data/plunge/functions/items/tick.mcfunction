# Dual Wielding
execute as @a positioned 7777777 77 7777777 run function plunge:items/dual_wielding/main

# Double-Edged
execute as @a[nbt={SelectedItem:{tag:{Plunge:["double_edged"]}}},advancements={plunge:on_hit=true},predicate=plunge:double_edged] at @s run function plunge:items/double_edged

# Fragile
execute as @a[nbt={SelectedItem:{tag:{Plunge:["fragile"]}}},advancements={plunge:on_use=true},predicate=plunge:fragile] at @s run function plunge:items/fragile

advancement revoke @a only plunge:on_hit
advancement revoke @a only plunge:on_use