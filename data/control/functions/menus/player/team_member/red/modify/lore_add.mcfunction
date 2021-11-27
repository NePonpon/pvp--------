#> control:menus/player/team_member/red/modify/lore_add
#
# プレイヤー名をLoreに追加する
#

## Loreに追加
data modify block 1 2 1 Text1 set value '{"storage":"common:","nbt":"PlayerNames[0]","color":"white","italic":false,"bold":true}'
data modify storage control: Item.tag.display.Lore append from block 1 2 1 Text1

# loop
data remove storage common: PlayerNames[0]
execute if data storage common: PlayerNames[-1] run function control:menus/player/team_member/red/modify/lore_add
