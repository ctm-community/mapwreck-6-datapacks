#Happens whenever a check needs to be made for custom items, comes branched from carto
## function cartographer_custom_enchantments:calc_enchant/find_custom

#data get storage ca.susu:enchants main
#data get storage ca.susu:enchants offh

#data get storage ca.susu:enchants head
#data get storage ca.susu:enchants body
#data get storage ca.susu:enchants legs
#data get storage ca.susu:enchants feet


#remove tags
tag @s remove strawhat
tag @s remove lovesfeet
#tag @s remove carrotcannon
#tag @s remove potatoslingshot

#add tags if player has those thingamajiggys
execute if data storage ca.susu:enchants head.tag.strawhat run tag @s add strawhat
execute if data storage ca.susu:enchants feet.tag.barefoot run tag @s add lovesfeet
#execute if data storage ca.susu:enchants {main:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}} run tag @s add carrotcannon
#execute if data storage ca.susu:enchants {main:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}} run tag @s add potatoslingshot

