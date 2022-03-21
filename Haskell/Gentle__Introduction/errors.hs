import Basement.String (upper)
fact 0 = 1
fact n 
    | n<0 = error "Argument n must be >=0"
    | otherwise = n * fact(n-1)

summation lower upper
    | lower > upper = error "left argument should be less than equal to right argument"
    | lower == upper = lower
    | otherwise = summation (lower+1) upper
