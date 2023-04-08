
scoreboard objectives add inasa.master dummy
scoreboard objectives add inasa.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add switch dummy

scoreboard objectives add give_objectives trigger
scoreboard objectives add give_dev_items trigger
scoreboard objectives add devroom trigger
scoreboard objectives add updown_switch trigger

execute unless score $debug.particles inasa.master matches -2147483648..2147483647 run scoreboard players set $debug.particles inasa.master 0
execute unless score $config.objective_count inasa.master matches -2147483648..2147483647 run scoreboard players set $config.objective_count inasa.master 16
execute unless score $config.freeform_order inasa.master matches -2147483648..2147483647 run scoreboard players set $config.freeform_order inasa.master 0
execute unless score $objectives_placed inasa.master matches -2147483648..2147483647 run scoreboard players set $objectives_placed inasa.master 0
execute unless score $victory inasa.master matches -2147483648..2147483647 run scoreboard players set $victory inasa.master 0
