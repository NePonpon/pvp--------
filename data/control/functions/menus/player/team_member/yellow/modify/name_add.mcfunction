#> control:menus/player/team_member/yellow/modify/name_add
#
# Yellowチームに人がいる場合
#

## プレイヤー名を取得
function common:get/player/name/reset
execute as @a[team=yellow] run function common:get/player/name/

## Loreに追加する
# Redチームの処理を利用
function control:menus/player/team_member/red/modify/lore_add
