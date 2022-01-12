#> player:triggers/attack
#
# プレイヤーが別エンティティに攻撃したときに実行
#

## 攻撃時アイテム処理実行
function #item:triggers/attack

# advancements解除
advancement revoke @s only player:triggers/attack
