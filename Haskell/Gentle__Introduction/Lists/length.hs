
myLength list
    | null list = 0
    | otherwise = 1 + myLength (tail list)

ith index list
    | index == 0 = head list
    | otherwise = ith (index - 1) (tail list)

removeith index list
    | index == 0 = tail list
    | otherwise = head list : removeith (index-1) (tail list)

myLengthX [] = 0
myLengthX (x:xs) = 1 + myLengthX xs

ithX 0 (x:xs) = x
ithX index (x:xs) = ithX (index - 1) xs

