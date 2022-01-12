#> player:triggers/jump
#
# プレイヤーがジャンプしたときに実行
#

## ジャンプ時アイテム処理実行
function #item:triggers/jump

# advancements解除
scoreboard players reset @s Triggers.Jump
advancement revoke @s only player:triggers/jump
