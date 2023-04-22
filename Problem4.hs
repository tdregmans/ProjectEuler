{--
    Problem4.hs
    Thijs Dregmans
    Project Euler: Problem 4
    Last edited: 2023-04-22
--}

{--
    source: https://projecteuler.net/problem=4

    Problem 4:
        A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
        Find the largest palindrome made from the product of two 3-digit numbers.

--}

module Problem4 where

    import Data.List

    palindromic :: String -> Bool
    palindromic str = str == reverse str
    
    palindromicProducts2digits :: [[Integer]]
    palindromicProducts2digits = [[x,y] | x <- [10..99], y <- [10..99], palindromic (show (product [x,y]))]

    palindromicProducts3digits :: [[Integer]]
    palindromicProducts3digits = [[x,y] | x <- [100..999], y <- [100..999], palindromic (show (product [x,y]))]

    -- answer = maximum (map product palindromicProducts3digits)