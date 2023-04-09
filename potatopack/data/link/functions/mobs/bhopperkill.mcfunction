#kills the bhopper
kill @e[distance=..3,type=item_display,tag=bhopper,limit=1,sort=nearest]
execute on passengers run function link:mobs/generic/voidkill
kill @s