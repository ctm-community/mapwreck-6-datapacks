#Happens when player uses carrot on stickypoo

#This isn't optimal. It's 2 nbt checks when you use carrot on stick. Why I do it? Carto branching didn't properly work. 
#I am content blaming pear and moving on. This is mw not moonlight.

execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}} run function link:items/wands/carrot/attemptcast
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}} run function link:items/wands/potato/attemptcast

