
myLength list = tailLength list 0 where
    tailLength list length
        | null list = length
        | otherwise = tailLength (tail list) (1+length)


removeOne item [] = []
removeOne item (x:xs)
    | item == x = xs
    | otherwise = x: removeOne item xs

removeAll item [] = []
removeAll item (x:xs)
    | item == x = removeAll item xs
    | otherwise = x: removeAll item xs

replaceOne item replace [] = []
replaceOne item replace (x:xs)
    | item == x = replace : xs
    | otherwise = x: replaceOne item replace xs

replaceAll item replace [] = []
replaceAll item replace (x:xs)
    | item == x = replace : replaceAll item replace xs
    | otherwise = x: replaceAll item replace xs