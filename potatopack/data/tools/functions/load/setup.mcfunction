
#Setup all necessary helper scoreboards
scoreboard objectives add n dummy
scoreboard objectives add math dummy
scoreboard objectives add game dummy
scoreboard players add gamestate game 0
scoreboard objectives add temp dummy
scoreboard objectives add area dummy
scoreboard objectives add life dummy
scoreboard objectives add uuid dummy
scoreboard objectives add lds dummy
scoreboard objectives add charm dummy
scoreboard objectives add charm2 dummy
scoreboard objectives add charmkb dummy
scoreboard objectives add stunning dummy
scoreboard objectives add arms dummy
scoreboard objectives add wing1 dummy
scoreboard objectives add wing2 dummy
scoreboard objectives add linkcarrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add boss16 dummy
scoreboard objectives add pieceid dummy

#Hunger booties and other advancements failsafe
advancement revoke @a[advancements={link:hungerbooties=true}] only link:hungerbooties
advancement revoke @a[advancements={link:playerclicksstartboss16=true}] only link:playerclicksstartboss16
advancement revoke @a[advancements={link:playerclicksstartboss162=true}] only link:playerclicksstartboss162

#boss bar
bossbar add a16boss {"text":"☠ Charles ☠","color":"dark_red","italic":false}
bossbar set a16boss color red

#set any needed scores
scoreboard players add @a area 0
scoreboard players add active boss16 0

#Rng stuffs
scoreboard players add in math 0
scoreboard players add in1 math 0
scoreboard players add out math 0

#rng setup
scoreboard objectives add constant dummy
scoreboard players set #lcg constant 1103515245

#Run loops
function tools:loop/tick/base
function tools:load/load_message

#looping
scoreboard objectives add gremloop dummy
scoreboard players add 5hz gremloop 0
scoreboard players add 10hz gremloop 0
scoreboard players add 1hz gremloop 0
scoreboard players add 10s gremloop 0

#setup numbers
scoreboard objectives add numbers dummy
scoreboard players set -1 numbers -1
scoreboard players set 0 numbers 0
scoreboard players set 1 numbers 1
scoreboard players set 2 numbers 2
scoreboard players set 3 numbers 3
scoreboard players set 4 numbers 4
scoreboard players set 5 numbers 5
scoreboard players set 6 numbers 6
scoreboard players set 7 numbers 7
scoreboard players set 8 numbers 8
scoreboard players set 9 numbers 9
scoreboard players set 10 numbers 10
scoreboard players set 11 numbers 11
scoreboard players set 12 numbers 12
scoreboard players set 13 numbers 13
scoreboard players set 14 numbers 14
scoreboard players set 15 numbers 15
scoreboard players set 16 numbers 16
scoreboard players set 17 numbers 17
scoreboard players set 18 numbers 18
scoreboard players set 19 numbers 19
scoreboard players set 20 numbers 20
scoreboard players set 21 numbers 21
scoreboard players set 22 numbers 22
scoreboard players set 23 numbers 23
scoreboard players set 24 numbers 24
scoreboard players set 25 numbers 25
scoreboard players set 26 numbers 26
scoreboard players set 27 numbers 27
scoreboard players set 28 numbers 28
scoreboard players set 29 numbers 29
scoreboard players set 30 numbers 30
scoreboard players set 31 numbers 31
scoreboard players set 32 numbers 32
scoreboard players set 33 numbers 33
scoreboard players set 34 numbers 34
scoreboard players set 35 numbers 35
scoreboard players set 36 numbers 36
scoreboard players set 37 numbers 37
scoreboard players set 38 numbers 38
scoreboard players set 39 numbers 39
scoreboard players set 40 numbers 40
scoreboard players set 41 numbers 41
scoreboard players set 42 numbers 42
scoreboard players set 43 numbers 43
scoreboard players set 44 numbers 44
scoreboard players set 45 numbers 45
scoreboard players set 46 numbers 46
scoreboard players set 47 numbers 47
scoreboard players set 48 numbers 48
scoreboard players set 49 numbers 49
scoreboard players set 50 numbers 50
scoreboard players set 60 numbers 60
scoreboard players set 65 numbers 65
scoreboard players set 70 numbers 70
scoreboard players set 80 numbers 80
scoreboard players set 90 numbers 90
scoreboard players set 100 numbers 100
scoreboard players set 101 numbers 101
scoreboard players set 102 numbers 102
scoreboard players set 103 numbers 103
scoreboard players set 104 numbers 104
scoreboard players set 105 numbers 105
scoreboard players set 106 numbers 106
scoreboard players set 107 numbers 107
scoreboard players set 108 numbers 108
scoreboard players set 109 numbers 109
scoreboard players set 110 numbers 110
scoreboard players set 120 numbers 120
scoreboard players set 130 numbers 130
scoreboard players set 140 numbers 140
scoreboard players set 150 numbers 150
scoreboard players set 160 numbers 160
scoreboard players set 170 numbers 170
scoreboard players set 180 numbers 180
scoreboard players set 190 numbers 190
scoreboard players set 200 numbers 200
scoreboard players set 210 numbers 210
scoreboard players set 220 numbers 220
scoreboard players set 230 numbers 230
scoreboard players set 240 numbers 240
scoreboard players set 250 numbers 250
scoreboard players set 260 numbers 260
scoreboard players set 270 numbers 270
scoreboard players set 280 numbers 280
scoreboard players set 290 numbers 290
scoreboard players set 300 numbers 300
scoreboard players set 310 numbers 310
scoreboard players set 320 numbers 320
scoreboard players set 330 numbers 330
scoreboard players set 340 numbers 340
scoreboard players set 350 numbers 350
scoreboard players set 360 numbers 360
scoreboard players set 370 numbers 370
scoreboard players set 380 numbers 380
scoreboard players set 390 numbers 390
scoreboard players set 400 numbers 400
scoreboard players set 410 numbers 410
scoreboard players set 420 numbers 420
scoreboard players set 430 numbers 430
scoreboard players set 440 numbers 440
scoreboard players set 450 numbers 450
scoreboard players set 460 numbers 460
scoreboard players set 470 numbers 470
scoreboard players set 480 numbers 480
scoreboard players set 490 numbers 490
scoreboard players set 500 numbers 500
scoreboard players set 600 numbers 600
scoreboard players set 700 numbers 700
scoreboard players set 800 numbers 800
scoreboard players set 900 numbers 900
scoreboard players set 1000 numbers 1000
scoreboard players set 1100 numbers 1100
scoreboard players set 1200 numbers 1200
scoreboard players set 1300 numbers 1300
scoreboard players set 1400 numbers 1400
scoreboard players set 1500 numbers 1500
scoreboard players set 1600 numbers 1600
scoreboard players set 1700 numbers 1700
scoreboard players set 1800 numbers 1800
scoreboard players set 1900 numbers 1900
scoreboard players set 2000 numbers 2000
scoreboard players set 2100 numbers 2100
scoreboard players set 2200 numbers 2200
scoreboard players set 2300 numbers 2300
scoreboard players set 2400 numbers 2400
scoreboard players set 2500 numbers 2500
scoreboard players set 2600 numbers 2600
scoreboard players set 2700 numbers 2700
scoreboard players set 2800 numbers 2800
scoreboard players set 2900 numbers 2900
scoreboard players set 3000 numbers 3000
scoreboard players set 3100 numbers 3100
scoreboard players set 3200 numbers 3200
scoreboard players set 3300 numbers 3300
scoreboard players set 3400 numbers 3400
scoreboard players set 3500 numbers 3500
scoreboard players set 3600 numbers 3600
scoreboard players set 3700 numbers 3700
scoreboard players set 3800 numbers 3800
scoreboard players set 3900 numbers 3900
scoreboard players set 4000 numbers 4000
scoreboard players set 4100 numbers 4100
scoreboard players set 4200 numbers 4200
scoreboard players set 4300 numbers 4300
scoreboard players set 4400 numbers 4400
scoreboard players set 4500 numbers 4500
scoreboard players set 4600 numbers 4600
scoreboard players set 4700 numbers 4700
scoreboard players set 4800 numbers 4800
scoreboard players set 4900 numbers 4900
scoreboard players set 5000 numbers 5000
scoreboard players set 6000 numbers 6000
scoreboard players set 7000 numbers 7000
scoreboard players set 8000 numbers 8000
scoreboard players set 9000 numbers 9000
scoreboard players set 10000 numbers 10000
scoreboard players set 50000 numbers 50000
scoreboard players set 100000 numbers 100000
scoreboard players set 1000000 numbers 1000000
scoreboard players set 10000000 numbers 10000000