import Data.String (lines, unlines)

numberLines text = unlines (helper (lines text) 1) where 
    helper [] _  = []
    helper (x:xs) count = (show count ++ " " ++ x) : helper xs (count+1)

{-
*Main> numberLines "Kenneth\nAlfred\nLambert "
"1 Kenneth\n2 Alfred\n3 Lambert \n"
*Main> putStrLn(numberLines "Kenneth\nAlfred\nLambert ")
1 Kenneth
2 Alfred
3 Lambert 
-}

