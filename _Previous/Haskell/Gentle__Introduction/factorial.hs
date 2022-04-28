fact 1 = 1
fact n = n * fact(n-1)

factIf n =
    if n<=1
        then 1
    else factIf(n-1)*n