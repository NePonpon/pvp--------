#> item:items/weapon/covert_sword/attack/0
#
# 攻撃時に実行する処理を記入
#

effect give @s speed 7 2
playsound entity.sheep.ambient master @a[distance=..16] ~ ~ ~ 1 
particle sweep_attack ~-0.2 ~ ~-0.2 0.2 0.4 0.2 1 40 normal
