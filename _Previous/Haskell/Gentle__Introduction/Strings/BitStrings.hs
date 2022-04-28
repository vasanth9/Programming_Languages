type BitString = String
unSignedBinaryTODecimal :: BitString -> Int 
unSignedBinaryTODecimal text = helper text (length text -1) 0 where
    helper "" _ result = result 
    helper (x:xs) exponent result
        | x == '0' = helper xs (exponent - 1) result
        | otherwise = helper xs (exponent -1) (result + (2^exponent))

{-
*Main> unSignedBinaryTODecimal "1001"
9
*Main> unSignedBinaryTODecimal "1111"
15
-}

unSignedDecimalToBinary :: Int -> BitString
unSignedDecimalToBinary 0 = "0"
unSignedDecimalToBinary number = helper number "" where
    helper 0 result = result
    helper number result =
        let quotient = number `div` 2
            remainder = number `mod` 2
        in
            helper quotient (show remainder++result)
{-
*Main> unSignedDecimalToBinary 12
"1100"
-}