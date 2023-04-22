{--
    Problem3.hs
    Thijs Dregmans
    Project Euler: Problem 3
    Last edited: 2023-04-22
--}

{--
    source: https://projecteuler.net/problem=3

    Problem 3:
        The prime factors of 13195 are 5, 7, 13 and 29.
        What is the largest prime factor of the number 600851475143 ?

--}

module Problem3 where

    import Data.List

    factors :: Int -> [Int] -> [Int]
    factors 1 list = list
    factors i list = factors (i `div` newI) (list ++ [newI])
        where newI = head [x | x <- [2..i], rem i x == 0]


    -- answer = maximum (factors 600851475143 [])