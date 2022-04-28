module Main where

-- to split the string based on spaces
split :: [Char] -> [String]
split words = helper words [] [] where
    helper::[Char] -> [Char] -> [String] ->[String]
    helper [] word result = result
    helper (x:xs) word result
        | x == ' ' && null word = helper xs [] result
        | x == ' ' && not(null word) = helper xs [] (result++[word])
        | null xs = helper [] [] (result++[word++[x]])
        | otherwise = helper xs (word++[x]) result


-- join the split string
join :: [[Char]] -> [Char]
join words = helper words [] where 
    helper [] word = word
    helper (x:xs) word
        | null word = helper xs x
        |otherwise = helper xs (word++" "++x) 












main:: IO()
main = do
    -- split
    print(split "Vasanth Kumar Cheepurupalli")
    print(split " ww ww w      w rere key pwwp     ")
    -- join
    print(join ["Vasanth","Kumar","Cheepurupalli"])
    print(join ["ww","ww","w","l","rere","key","poop"])
    -- split and join
    print(join(split " ww ww w      w rere key pwwp     "))

    -- join and split
    print(split(join ["Vasanth","Kumar","Cheepurupalli"]))


{-
["Vasanth","Kumar","Cheepurupalli"]
["ww","ww","w","w","rere","key","pwwp"]
"Vasanth Kumar Cheepurupalli"
"ww ww w l rere key poop"
"ww ww w w rere key pwwp"
["Vasanth","Kumar","Cheepurupalli"]
-}

