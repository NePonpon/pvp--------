#> control:menus/player/team_member/blue/modify/name_add
#
# Blueチームに人がいる場合
#

## プレイヤー名を取得
function common:get/player/name/reset
execute as @a[team=blue] run function common:get/player/name/

## Loreに追加する
# Redチームの処理を利用
function control:menus/player/team_member/red/modify/lore_add
