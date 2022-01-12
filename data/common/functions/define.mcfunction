#> common:define

#> Storage
#define storage common:
# 外部ライブラリ - 個別用ストレージOhMyDat
#define storage oh_my_dat:
# 外部ライブラリ - 配列操作ArrayStorageSystem
#define storage array_util:

#> ScoreBoard-Objective
#define objective Common
#define objective Calc
#define objective PlayerNameNumber
# 外部ライブラリ - 配列操作ArrayStorageSystem
#define objective ArrayUtilInput

#> ScoreBoard-ScoreHolder
#define score_holder $Count
# 外部ライブラリ - 配列操作ArrayStorageSystem
#define score_holder $Move

#> LootTable
#define loot_table common:player_name

#> tag/item
#define tag/item #common:all

#> function
# 外部ライブラリ - 個別用ストレージOhMyDat
#define function oh_my_dat:please
# 外部ライブラリ - 配列操作ArrayStorageSystem
#define function array_util:api/reverse
#define function array_util:api/force_delete_cache
#define function array_util:api/move
