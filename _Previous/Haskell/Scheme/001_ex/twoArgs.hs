module Main where
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    putStrLn ("Arg 1:" ++ args !! 0 ++" Arg 2:" ++ args !! 1)
    
