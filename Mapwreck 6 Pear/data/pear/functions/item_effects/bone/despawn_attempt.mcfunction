scoreboard players set $test_aggro pear.bone_time 1

execute on target run scoreboard players set $test_aggro pear.bone_time 0

execute if score $test_aggro pear.bone_time matches 1.. run function pear:item_effects/bone/despawn