{--
    Problem2.hs
    Thijs Dregmans
    Project Euler: Problem 2
    Last edited: 2023-04-21
--}

{--
    source: https://projecteuler.net/problem=2

    Problem 2:
        Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
        1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
        By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

--}

module Problem2 where

    import Data.List
    
    fibonacci :: Int -> Int
    fibonacci 0 = 0
    fibonacci 1 = 1
    fibonacci x = fibonacci (x-1) + fibonacci (x-2)

    fibonacciSequence limit = [fibonacci x | x <- [1..], fibonacci x < limit]

    -- answer = sum (filter even (fibonacciSequence 4000000))