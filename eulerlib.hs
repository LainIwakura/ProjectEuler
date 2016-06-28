module EulerLib where

import Data.List

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

chunk :: Int -> [a] -> [[a]]
chunk n = takeWhile ((== n) . length) . transpose . take n . iterate tail

charToArray :: [Char] -> [Int]
charToArray [] = []
charToArray (x:xs) = (read [x]::Int) : (charToArray xs)
