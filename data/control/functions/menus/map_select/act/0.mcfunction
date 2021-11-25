#> control:menus/map_select/act/0
#
# 設定を変更したり、アイコンの内容を変更したりする
#
data remove storage control:menu Initialize
data modify storage control:menu Initialize set value {tag:{CtrlEnderChest:true,JumpTo:"map_select"},Count:1b}
data modify storage control:menu Initialize.id set value "minecraft:map"
data modify storage control:menu Initialize.tag.display.Name set value '{"text":"map_select"}'
data modify storage control:menu Initialize.tag.display.Lore set value [マップ選択画面を開きます]
data modify storage control:menu Initialize.Slot set value 3b

## 同じページを再表示
function control:menu Menus.GameSettings
