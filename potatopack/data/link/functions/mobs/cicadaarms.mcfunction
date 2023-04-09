#Arms to find entity
scoreboard players set temp stunning 0
execute store result score temp stunning run tp @s @e[distance=..10,limit=1,sort=nearest,tag=cicada,scores={arms=0}]
execute if score temp stunning matches 1.. at @s positioned ~ ~ ~ run tp @s ^ ^ ^-0.1
execute if score temp stunning matches 1.. at @s run scoreboard players set @e[distance=..2,limit=1,sort=nearest,tag=cicada,scores={arms=0}] arms 1
execute if score temp stunning matches ..0 at @s run kill @s

#arms animation
scoreboard players add @s arms 1
data merge entity @s[scores={arms=1}] {Pose:{LeftArm:[266f,0f,0f],RightArm:[268f,0f,0f],LeftLeg:[268f,348f,0f],RightLeg:[268f,13f,0f],Head:[180f,0f,0f]}}
data merge entity @s[scores={arms=2}] {Pose:{LeftArm:[270f,0f,2f],RightArm:[264f,0f,-2f],LeftLeg:[266f,350f,-2f],RightLeg:[270f,11f,2f],Head:[180f,0f,0f]}}
data merge entity @s[scores={arms=3}] {Pose:{LeftArm:[274f,1f,4f],RightArm:[260f,-1f,-4f],LeftLeg:[264f,352f,-4f],RightLeg:[272f,9f,4f],Head:[180f,0f,0f]}}
data merge entity @s[scores={arms=4}] {Pose:{LeftArm:[276f,2f,6f],RightArm:[256f,-2f,-7f],LeftLeg:[262f,354f,-6f],RightLeg:[274f,6f,7f],Head:[180f,0f,0f]}}
data merge entity @s[scores={arms=5}] {Pose:{LeftArm:[274f,1f,4f],RightArm:[260f,-1f,-4f],LeftLeg:[264f,352f,-4f],RightLeg:[272f,9f,4f],Head:[180f,0f,0f]}}
data merge entity @s[scores={arms=6}] {Pose:{LeftArm:[270f,0f,2f],RightArm:[264f,0f,-2f],LeftLeg:[266f,350f,-2f],RightLeg:[270f,11f,2f],Head:[180f,0f,0f]}}

scoreboard players set @s[scores={arms=6..}] arms 0