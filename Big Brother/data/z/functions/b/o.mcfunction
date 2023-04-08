
tag @p[advancements={z:za=true}] add p
tag @p[advancements={z:zb=true}] add p
tag @p[advancements={z:zc=true}] add p
tag @p[advancements={z:zd=true}] add p
tag @p[advancements={z:ze=true}] add p
tag @p[advancements={z:zf=true}] add p
tag @p[advancements={z:zg=true}] add p
tag @p[advancements={z:zh=true}] add p
tag @p[advancements={z:zi=true}] add p
tag @p[advancements={z:zj=true}] add p
tag @p[advancements={z:zk=true}] add p
tag @p[advancements={z:zl=true}] add p
tag @p[advancements={z:zm=true}] add p
tag @p[advancements={z:zn=true}] add p

setblock 4206849 1 4206868 minecraft:oak_sign
data remove block 4206849 1 4206868 Text1
data merge block 4206849 1 4206868 {Text1:'{"selector":"@p[tag=p]"}'}
data modify entity @s data.Placer_Data set from block 4206849 1 4206868 Text1

execute if entity @s[name="z"] run data modify entity @s data.type set value "sign"
execute if entity @s[name="zz"] run data modify entity @s data.type set value "chest"
execute if entity @s[name="zzz"] run data modify entity @s data.type set value "command block"

tag @s remove zll
tag @a remove p