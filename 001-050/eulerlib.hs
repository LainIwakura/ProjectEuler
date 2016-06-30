module EulerLib where

import Data.List

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

chunk :: Int -> [a] -> [[a]]
chunk n = takeWhile ((== n) . length) . transpose . take n . iterate tail

charToArray :: [Char] -> [Int]
charToArray [] = []
charToArray (x:xs) = (read [x]::Int) : (charToArray xs)

factors n = lows ++ (reverse $ map (div n) lows)
  where lows = filter ((== 0) . mod n) [1..truncate . sqrt $ fromIntegral n]

triangulars = scanl (+) 1 [2..]

collatz :: Int -> (Int, Int)
collatz m = coll 1 m
  where coll r 1 = (m, r)
        coll r n = if even n then coll (r+1) (n `quot` 2) else coll (r+1) (3*n+1)
