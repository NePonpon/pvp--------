#> team:any/tick
#
# プレイヤーがいる場所次第でチームに所属させる
#

# もしエンティティがいなければ召喚する
execute unless entity @e[tag=TeamSelector] run function team:any/summon

# 選択範囲に入ったらそのチームにjoin
execute at @e[tag=RedTeam] positioned ~-3 ~-1 ~-3 run team join red @a[team=!red,dx=6,dy=6,dz=6]
execute at @e[tag=BlueTeam] positioned ~-3 ~-1 ~-3 run team join blue @a[team=!blue,dx=6,dy=6,dz=6]
execute at @e[tag=GreenTeam] positioned ~-3 ~-1 ~-3 run team join green @a[team=!green,dx=6,dy=6,dz=6]
execute at @e[tag=YellowTeam] positioned ~-3 ~-1 ~-3 run team join yellow @a[team=!yellow,dx=6,dy=6,dz=6]
team join watch_game @a[team=!watch_game,x=-177,y=51,z=231,dx=6,dy=6,dz=6]
