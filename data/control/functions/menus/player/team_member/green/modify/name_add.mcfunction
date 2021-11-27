#> control:menus/player/team_member/green/modify/name_add
#
# Greenチームに人がいる場合
#

## プレイヤー名を取得
function common:player_name/reset
execute as @a[team=green] run function common:player_name/get

## Loreに追加する
# Redチームの処理を利用
function control:menus/player/team_member/red/modify/lore_add
