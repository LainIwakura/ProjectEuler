module Main where

import EulerLib
import Data.List (maximumBy)
import Data.Function (on)

main :: IO ()
main = print $ fst $ maximumBy (compare `on` snd) [collatz n | n <- [1..999999]]
