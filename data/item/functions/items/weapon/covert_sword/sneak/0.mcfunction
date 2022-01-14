#> item:items/weapon/covert_sword/sneak/0
#
# スニーク時に実行する処理を記入
#

effect give @s strength 15 2
playsound entity.generic.burn master @a[distance=..8] ~ ~ ~ 1 1
particle lava ~-0.2 ~ ~-0.2 0.2 0.4 0.2 0.1 20 normal
particle large_smoke ~-0.2 ~ ~-0.2 0.2 0.4 0.2 0.1 20 normal
