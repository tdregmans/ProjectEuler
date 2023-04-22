{--
    Problem7.hs
    Thijs Dregmans
    Project Euler: Problem 7
    Last edited: 2023-04-22
--}

{--
    source: https://projecteuler.net/problem=7

    Problem 7:
        By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
        What is the 10 001st prime number?

--}

module Problem7 where

    import Data.List
    import Problem3 (factors)
    
    primes :: [Int]
    primes = [x | x <- [2..], elem x (factors x [])]

    -- answer = primes !! 10000