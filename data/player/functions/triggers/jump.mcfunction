#> player:triggers/jump
#
# プレイヤーがジャンプしたときに実行
#

## プレイヤーデータ取得
function common:get_nbt/player/inventory

## ジャンプ時アイテム処理実行
function #item:triggers/jump

# advancements解除
scoreboard players reset @s Triggers.Jump
advancement revoke @s only player:triggers/jump
