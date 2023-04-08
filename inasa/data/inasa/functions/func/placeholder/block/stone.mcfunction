
function bb:lib/hide_feedback

execute align xyz positioned ~.5 ~ ~.5 run summon item_display ~ ~ ~ {Tags:["inasa.object"],transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],Passengers:[{id:"minecraft:interaction",width:1.05f,height:1.05f,Tags:["inasa.object","inasa.placeholder.interaction","inasa.placeholder.stone","inasa.interaction_any"]}],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:9803}}}
playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 1 1

kill @s
