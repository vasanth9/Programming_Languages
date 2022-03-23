split :: [Char] -> [String]
split words = helper words [] [] where 
    helper::[Char] -> [Char] -> [String] ->[String]
    helper [] word result = result
    helper (x:xs) word result
        | x == ' ' = helper xs [] (result++[word])
        | null xs = helper [] [] (result++[word++[x]])
        | otherwise = helper xs (word++[x]) result

