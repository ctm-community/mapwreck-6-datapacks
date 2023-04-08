
function bb:lib/hide_feedback

execute align xyz positioned ~.5 ~ ~.5 run summon block_display ~ ~ ~ {Tags:["inasa.object"],transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,0.000f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],Passengers:[{id:"minecraft:interaction",width:1.05f,height:1.05f,Tags:["inasa.object","inasa.dev_tp.interaction","inasa.tp.monument","inasa.interaction_any"]}],block_state:{Name:"minecraft:quartz_bricks"}}
setblock ~ ~ ~ barrier
