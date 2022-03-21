
fact n = tailFact n 1 where
    tailFact 1 result = result
    tailFact n result = tailFact (n-1) (n*result)


summation lower upper = tailSum lower lower where
    tailSum lower result
        | lower == upper = result
        | otherwise = tailSum (lower + 1) (lower + result)

fib n = tailFib 1 0 n where
    tailFib a b 1 = a
    tailFib a b n = tailFib (a+b) a (n-1)