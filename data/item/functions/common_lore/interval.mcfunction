#> item:common_lore/interval
#
# インターバルをLoreに表示
#

data modify block 1 2 1 Text1 set value '{"text":"","color":"blue","bold":true,"italic":false,"extra":[{"text":"Interval: "},{"storage":"item:items","nbt":"Initialize.tag.Interval"}]}'
data modify storage item: CommonLore append from block 1 2 1 Text1
