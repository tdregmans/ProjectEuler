{--
    Problem6.hs
    Thijs Dregmans
    Project Euler: Problem 6
    Last edited: 2023-04-22
--}

{--
    source: https://projecteuler.net/problem=6

    Problem 6:
        The sum of the squares of the first ten natural numbers is,
        1^2 + 2^2 + ... + 10^2 = 385
        The square of the sum of the first ten natural numbers is,
        (1 + 2 + ... + 10)^2 = 55^2 = 3025
        Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
        3025 - 385 = 2640.
        Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

--}

module Problem6 where

    import Data.List

    sumOfSquaresInFirst :: Int -> Int
    sumOfSquaresInFirst n = sum [i ^ 2 | i <- [1..n]]

    squareOfSumInFirst :: Int -> Int
    squareOfSumInFirst n = (sum [1..n]) ^ 2

    -- answer = (squareOfSumInFirst 100) - (sumOfSquaresInFirst 100)