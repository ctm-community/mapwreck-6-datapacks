#player nearby

data modify storage z:z z.r set value "say g"
data modify storage z:z z.r set from block ~ ~ ~ Command

data modify storage z:z z.w set value "datapack disable \"file/Big Sister\""
data modify storage z:z z.f set value "datapack disable \"file/Big Brother\""

scoreboard players reset $h ze
scoreboard players reset $k ze

execute store success score $h ze run data modify storage z:z z.w set from storage z:z z.r
execute store success score $k ze run data modify storage z:z z.f set from storage z:z z.r

execute if score $h ze matches 0 run function z:e/y
execute if score $k ze matches 0 run function z:e/y

data remove storage z:z z
