
function inasa:func/remove/objective/generic

execute at 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234 run setblock ~ ~ ~ air
execute as 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234 on passengers run kill @s
kill 3e3b0f20-7d0a-41ff-b1d0-38cd4800b234
