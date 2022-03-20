diameter :: Num a => a -> a
diameter r = r * 2

circumference :: Floating a => a -> a
circumference r = 2 * pi * r

area :: Floating a => a -> a
area r = pi * r ^ 2
