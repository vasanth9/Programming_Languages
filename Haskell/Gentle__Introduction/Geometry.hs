{-
    Geometry.hs
    A module of functions for working with geometric shapes
-}

module Geometry (hypotenuse) where

-- Computes and returns the hypotenuse of a right triangle with sides a and b
hypotenuse :: Floating a => a -> a -> a
hypotenuse a b = sqrt (a ^ 2 + b ^ 2) 

