module EulerLib where

import Data.List

-- Fibonacci sequence
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- Divide a list into sublists each of length n where the first element of each subsequent list
-- is the second element of the prior list
chunk :: Int -> [a] -> [[a]]
chunk n = takeWhile ((== n) . length) . transpose . take n . iterate tail

-- String to digit list
charToArray :: [Char] -> [Int]
charToArray [] = []
charToArray (x:xs) = (read [x]::Int) : (charToArray xs)

-- factors of a number
factors n = nub $ lows ++ (reverse $ map (div n) lows)
  where lows = filter ((== 0) . mod n) [1..truncate . sqrt $ fromIntegral n]

-- proper factors of a number (i.e, does not include the number being factored)
pfactors = init . factors

-- Checks if a number is amicable. There are 2 tests involved:
-- 1) the sum of the proper divisors is not the number itself
-- 2) if d(n) is a function that sums proper divisors, then:
--    d(d(a)) == a
amicable n = ((sum $ pfactors n) /= n) && (n == (sum $ pfactors $ sum $ pfactors n))

-- produces a never-ending sequence of triangle numbers
triangulars = scanl (+) 1 [2..]

-- Collatz sequence, given an int it gives back the length of the sequence and the last digit (1)
collatz :: Int -> (Int, Int)
collatz m = coll 1 m
  where coll r 1 = (m, r)
        coll r n = if even n then coll (r+1) (n `quot` 2) else coll (r+1) (3*n+1)

perfectNum n = n == (sum $ pfactors n)

abundantNum n = n < (sum $ pfactors n)

deficientNum n = n > (sum $ pfactors n)
