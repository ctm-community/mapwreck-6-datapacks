
execute unless score $tp_unlocked.white inasa.master matches -2147483648..2147483647 run schedule function inasa:func/teleporter/main/unlock/white 5t
execute if score $tp_unlocked.white inasa.master matches 0 run schedule function inasa:func/teleporter/main/unlock/white 5t

function inasa:func/teleporter/reco_aux/tp_main/tp
