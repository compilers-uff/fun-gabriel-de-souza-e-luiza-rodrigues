fun rec_fib_2( n \ felem \ selem ) =
    if n > 0
    then rec_fib_2( n - 1 \ selem \ felem + selem )
    else a,

fun rec_fib(x) =
    rec_fib_2( x \ 0 \ 1 )
