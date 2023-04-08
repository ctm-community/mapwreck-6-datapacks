
tag @s add inasa.toggle
execute if entity @s[tag=inasa.toggle,tag=!inasa.night_vision] run function inasa:func/items/night_vision/toggle/on
execute if entity @s[tag=inasa.toggle,tag=inasa.night_vision] run function inasa:func/items/night_vision/toggle/off
