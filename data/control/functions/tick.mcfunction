#> control:tick
#
# schedule tick loop
#

## エンダーチェストclose
execute as @a[tag=CtrlEnderChest,scores={EnderChestClose=100..}] at @s run function control:close-ender_chest

## メニューアイテム選択
execute as @a store success score @s CtrlEnderChest run clear @s #control:all{CtrlEnderChest:true} 0
execute as @a[scores={CtrlEnderChest=1}] at @s run function control:menu_click
scoreboard players reset @a CtrlEnderChest

## tick loop
execute if entity @a[tag=CtrlEnderChest] run schedule function control:tick 1t
