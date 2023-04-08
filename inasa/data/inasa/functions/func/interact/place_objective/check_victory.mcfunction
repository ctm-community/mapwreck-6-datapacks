
execute if score $victory inasa.master matches 0 if score $objectives_placed inasa.master >= $config.objective_count inasa.master run function inasa:func/win/main
