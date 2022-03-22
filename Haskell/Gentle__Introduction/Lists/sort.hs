import Data.List ( sort )
letsSort list = sort list

insert item [] = [item]
insert item (x:xs)
    | x>=item = item: x : xs
    | otherwise = x: insert item xs

insertionSort [] =[]
insertionSort (x:xs) = insert x (insertionSort(xs))