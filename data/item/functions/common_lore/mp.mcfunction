#> item:common_lore/mp
#
# MPをLoreに表示
#

data modify block 1 2 1 Text1 set value '{"text":"","color":"green","bold":true,"italic":false,"extra":[{"text":"MP: "},{"storage":"item:items","nbt":"Initialize.tag.MP"}]}'
data modify storage item: CommonLore append from block 1 2 1 Text1
