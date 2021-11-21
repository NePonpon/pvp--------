#> team:tick

# 選択なら分岐
execute if data storage team: {Selection:"Any"} run function team:any/tick

# ランダムが指定されたら分岐
execute if data storage team: {Selection:"Random"} run function team:random

# プレイヤーは常に発光
effect give @a glowing 1 0 true

# tick loop
schedule function team:tick 1t
