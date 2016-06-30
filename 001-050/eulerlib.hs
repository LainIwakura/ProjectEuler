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

collatz :: Int -> [Int] -> [Int]
collatz 1 xs = reverse $ 1:xs
collatz n xs
  | n `rem` 2 == 1 = collatz (3*n+1) (n:xs)
  | n `rem` 2 == 0 = collatz (n `div` 2) (n:xs)
