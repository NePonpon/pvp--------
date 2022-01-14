#> player:triggers/click
#
# プレイヤーがアイテムをクリックしたときに実行
#

## プレイヤーデータ取得
function common:get/player/nbt/inventory

## ジャンプ時アイテム処理実行
function #item:triggers/click

# advancements解除
scoreboard players reset @s Triggers.Click0
advancement revoke @s only player:triggers/click
