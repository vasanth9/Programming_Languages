
fact n = tailFact n 1

tailFact 1 result = result
tailFact n result = tailFact (n-1) (n*result)


summation lower upper = tailSum lower upper lower

tailSum lower upper result
    | lower == upper = result
    | otherwise = tailSum (lower + 1) upper (lower + result)

fib n = tailFib 1 0 n

tailFib a b 1 = a
tailFib a b n = tailFib (a+b) a (n-1)
