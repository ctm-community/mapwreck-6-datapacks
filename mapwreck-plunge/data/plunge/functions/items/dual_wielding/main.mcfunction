# Activate
execute as @s[tag=!invi-dw,nbt={SelectedItem:{tag:{Plunge:["dual_wielding"]}},Inventory:[{Slot:-106b,tag:{Plunge:["dual_wielding"]}}]}] run function plunge:items/dual_wielding/activate

# Deactivate
execute as @s[tag=invi-dw,nbt=!{Inventory:[{Slot:-106b,tag:{Plunge:["dual_wielding"]}}]}] run function plunge:items/dual_wielding/deactivate
execute as @s[tag=invi-dw,nbt=!{SelectedItem:{tag:{Plunge:["dual_wielding"]}}}] run function plunge:items/dual_wielding/deactivate

# Trigger
execute as @s[advancements={plunge:on_hit=true}] run function plunge:items/dual_wielding/attack