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
