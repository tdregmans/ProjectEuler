{--
    Problem9.hs
    Thijs Dregmans
    Project Euler: Problem 9
    Last edited: 2023-04-22
--}

{--
    source: https://projecteuler.net/problem=9

    Problem 9:
        A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
        a^2 + b^2 = c^2

        For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

        There exists exactly one Pythagorean triplet for which a + b + c = 1000.
        Find the product abc.

--}

module Problem9 where
    
    triplets :: [[Int]]
    triplets = [[a,b,c] | a <- [1..1000], b <- [1..1000], c <- [1..1000], a+b+c==1000, b > a, c > b, a^2 + b^2 == c^2]

    -- answer = product (head triplets)