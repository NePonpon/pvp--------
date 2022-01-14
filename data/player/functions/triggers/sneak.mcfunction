#> player:triggers/sneak
#
# プレイヤーがスニークしているときに実行
#

## プレイヤーデータ取得
function common:get_nbt/player/inventory

## 以下スニーク中の処理
execute if score @s Triggers.Sneak matches 3 run scoreboard players add @s SneakTime 1


## 以下スニーク終了時の処理
execute if score @s Triggers.Sneak matches 2 run scoreboard players reset @s SneakTime


## ジャンプ時アイテム処理実行
function #item:triggers/sneak

# スニーク状態取得
scoreboard players set _ Common 2
scoreboard players operation @s Triggers.Sneak *= _ Common
scoreboard players set _ Common 4
scoreboard players operation @s Triggers.Sneak %= _ Common

# advancements削除
advancement revoke @s only player:triggers/sneak
