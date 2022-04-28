main :: IO ()
main = do
    print "Enter your name:"
    name <- getLine
    putStrLn ("Hello " ++ name) 
