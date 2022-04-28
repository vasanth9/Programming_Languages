pow :: (Eq b, Num b, Num p) => (p, b) -> p
pow(base,n) = do
    if n == 0
        then 1
    else base*pow(base,n-1)