
function inasa:func/remove/objective/generic

execute at 5e58eca1-c4ab-4866-9a19-6a961035f9c0 run setblock ~ ~ ~ air
execute as 5e58eca1-c4ab-4866-9a19-6a961035f9c0 on passengers run kill @s
kill 5e58eca1-c4ab-4866-9a19-6a961035f9c0
