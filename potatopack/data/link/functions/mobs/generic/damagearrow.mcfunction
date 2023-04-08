#Recursive function for spawning arrow just out of mob hitbox

execute unless entity @s[dx=0.0,dy=0.0,dz=0.0] run summon arrow ~ ~0.3 ~ {Tags:["lds.killer"],Silent:1b,pickup:0b,player:0b,life:1199,damage:1.0d,Motion:[0.0,-10.0,0.0],SoundEvent:"ambient.cave"}
execute if entity @s[dx=0.0,dy=0.0,dz=0.0] positioned ~ ~0.1 ~ run function link:mobs/generic/damagearrow
