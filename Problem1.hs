{--
    Problem1.hs
    Thijs Dregmans
    Project Euler: Problem 1
    Last edited: 2023-04-21
--}

{--
    source: https://projecteuler.net/problem=1

    Problem 1:
        If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
        Find the sum of all the multiples of 3 or 5 below 1000.

--}

module Problem1 where

    multiples :: Int -> Int -> [Int]
    multiples x limit = [i | i <- [1..limit-1], i `rem` x == 0]

    -- answer = sum (nub (multiples 3 1000 ++ multiples 5 1000))