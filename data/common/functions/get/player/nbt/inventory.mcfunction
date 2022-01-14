#> common:get/player/nbt/inventory
#
# NBTを取得してストレージに保存する  
# プレイヤーのinventoryを取得する
#
#@input
#   as player
#
#@output
#   storage common: Inventorys
#     Inventory[] : List
#       インベントリのアイテムのリスト
#     ArmorItems[] : List
#       防具のアイテムのリスト
#     HandItems[] : List
#       手持ちのアイテムのリスト
#     SelectedItem : compound
#       メインハンドのアイテム
#@api

data remove storage common: Inventorys

# Inventorys
  # Inventory
    data modify storage common: Inventorys.Inventory set from entity @s Inventory

  # ArmorItems
    data modify storage common: Inventorys.ArmorItems set value [{},{},{},{}]
    data modify storage common: Inventorys.ArmorItems[0] set from storage common: Inventorys.Inventory[{Slot:100b}]
    data modify storage common: Inventorys.ArmorItems[1] set from storage common: Inventorys.Inventory[{Slot:101b}]
    data modify storage common: Inventorys.ArmorItems[2] set from storage common: Inventorys.Inventory[{Slot:102b}]
    data modify storage common: Inventorys.ArmorItems[3] set from storage common: Inventorys.Inventory[{Slot:103b}]
    data remove storage common: Inventorys.ArmorItems[].Slot

  # SelectedItems
    data modify storage common: Inventorys.SelectedItem set from entity @s SelectedItem

  # HandItems
    data modify storage common: Inventorys.HandItems set value [{},{}]
    data modify storage common: Inventorys.HandItems[0] set from storage common: Inventorys.SelectedItem
    data modify storage common: Inventorys.HandItems[1] set from storage common: Inventorys.Inventory[{Slot:-106b}]
    data remove storage common: Inventorys.HandItems[].Slot

