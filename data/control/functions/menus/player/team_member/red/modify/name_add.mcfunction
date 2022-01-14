#> control:menus/player/team_member/red/modify/name_add
#
# Redチームに人がいる場合
#

## プレイヤー名を取得
function common:get/player/name/reset
execute as @a[team=red] run function common:get/player/name/

## Loreに追加する
function control:menus/player/team_member/red/modify/lore_add
