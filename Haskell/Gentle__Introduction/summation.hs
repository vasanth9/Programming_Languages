summation lower upper
    | lower == upper = lower
    | otherwise = lower + summation (lower+1) upper

summationIf (lower, upper) =
    if lower == upper
        then lower
    else lower+summationIf(lower+1, upper)