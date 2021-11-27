#> control:menus/player/team_member/watch_game/modify_check
#
# メニューアイコンの内容を編集したいときのみ有効化する
#

## アイテムチェック
execute if data storage control: Item.tag{JumpTo:"Player.WatchGame-TeamMember"} run function control:menus/player/team_member/watch_game/modify/0
