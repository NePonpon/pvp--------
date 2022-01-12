#> player:triggers/click
#
# プレイヤーがアイテムをクリックしたときに実行
#


## ジャンプ時アイテム処理実行
function #item:triggers/click

# advancements解除
scoreboard players reset @s Triggers.Click0
advancement revoke @s only player:triggers/click
