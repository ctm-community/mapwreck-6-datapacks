#Used to delete worm

kill @e[type=item_display,tag=a16bosspiece]
execute as ba2946fa-6d05-4370-bdda-340c336e5bef at @s run function link:mobs/generic/voidkill
kill ba2946fa-6d05-4370-bdda-340c336e5bef
scoreboard players reset ba2946fa-6d05-4370-bdda-340c336e5bef temp