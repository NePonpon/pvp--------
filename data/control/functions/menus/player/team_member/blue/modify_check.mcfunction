#> control:menus/player/team_member/blue/modify_check
#
# メニューアイコンの内容を編集したいときのみ有効化する
#

## アイテムチェック
execute if data storage control: Item.tag{JumpTo:"Player.Blue-TeamMember"} run function control:menus/player/team_member/blue/modify/0
