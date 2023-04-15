# --- RED BIRB ---
# This execute gives Ai back to the parrot when they get tamed by a player
execute as @e[type=minecraft:parrot,tag=Offshoulder,nbt={NoAI:true}] if data entity @s Owner run data merge entity @s {NoAI:false}

# Those execute detects when a special parrot get/get of a player shoulder
# Then they run the function that gives/remove modifiers to the player
execute as @a[tag=!Offshoulderbuff] if predicate enderayo:offshoulder run function enderayo:give_birb_buff
execute as @a[tag=Offshoulderbuff] unless predicate enderayo:offshoulder run function enderayo:remove_birb_buff

# --- MOSS BLOCK ---
# This execute clear block display leftover by the mossblock mob
execute as @e[type=minecraft:block_display,tag=livingrock] unless predicate enderayo:is_riding_slime run kill @s

# This execute makes the block display of the mossblock mob match the slime rotation
execute as @e[type=minecraft:block_display,tag=livingrock] run data modify entity @s Rotation set from entity @e[type=minecraft:slime,name="Parasitic Moss",nbt={Passengers:[{Tags:["livingrock"]}]},limit=1,sort=nearest] Rotation

# === === ===

# LOOP
# Change this to adjust how often the datapack run the main loop (if there is lag issue).
schedule function enderayo:main 1t