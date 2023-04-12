#Creates a fake hole at random
kill c138d663-3942-4fcf-a193-5bf8481dfddf

#rng
scoreboard players set in math 1
scoreboard players set in1 math 6
function tools:rng/range

#summon at hole
execute if score out math matches 1 run summon marker -201 165 245 {UUID:[I;-1053239709,960647119,-1584178184,1209925087],Tags:["boss16fakehole"],CustomName:'{"text":"Fake Hole"}'}
execute if score out math matches 2 run summon marker -212 166 238 {UUID:[I;-1053239709,960647119,-1584178184,1209925087],Tags:["boss16fakehole"],CustomName:'{"text":"Fake Hole"}'}
execute if score out math matches 3 run summon marker -211 166 228 {UUID:[I;-1053239709,960647119,-1584178184,1209925087],Tags:["boss16fakehole"],CustomName:'{"text":"Fake Hole"}'}
execute if score out math matches 4 run summon marker -198 165 227 {UUID:[I;-1053239709,960647119,-1584178184,1209925087],Tags:["boss16fakehole"],CustomName:'{"text":"Fake Hole"}'}
execute if score out math matches 5 run summon marker -190 165 233 {UUID:[I;-1053239709,960647119,-1584178184,1209925087],Tags:["boss16fakehole"],CustomName:'{"text":"Fake Hole"}'}
execute if score out math matches 6 run summon marker -188 164 245 {UUID:[I;-1053239709,960647119,-1584178184,1209925087],Tags:["boss16fakehole"],CustomName:'{"text":"Fake Hole"}'}
