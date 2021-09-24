fun rec_fat_2( x \ k ) =
    if x == 0
    then 1 else if x == 1
                then k
                else x * rec_fat_2( x - 1 \ k ),

fun rec_fat(x) =
    rec_fat_2( x \ 1 )
