#> item:common_lore/cost
#
# コストをLoreに表示
#

data modify block 1 2 1 Text1 set value '{"text":"","color":"yellow","bold":true,"italic":false,"extra":[{"text":"Cost: "},{"storage":"item:items","nbt":"Initialize.tag.Cost"}]}'
data modify storage item: CommonLore append from block 1 2 1 Text1
