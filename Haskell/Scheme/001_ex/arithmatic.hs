module Main where
import System.Environment

main :: IO ()
main = do
    print "Enter the value of x:"
    x <- getLine
    print "Enter the value of y:"
    y <- getLine
    let a = read x :: Int
    let b = read y :: Int
    putStrLn ("ADD:"++ show (a+b))
    putStrLn ("SUB:"++ show (a-b))
    putStrLn ("MUL:"++ show (a*b))
    putStrLn ("DIV:"++ show (div a b))
    putStrLn ("POW:"++ show (a^b))
    putStrLn ("MOD:"++ show (mod a b))
    
