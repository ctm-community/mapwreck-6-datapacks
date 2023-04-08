
data remove storage inasa:master sudo_root.held_item
data modify storage inasa:master sudo_root.held_item set from entity @p[advancements={inasa:interact/right=true}] SelectedItem

execute if data storage inasa:master sudo_root.held_item.tag.objective run function inasa:func/interact/place_objective/holding_objective
