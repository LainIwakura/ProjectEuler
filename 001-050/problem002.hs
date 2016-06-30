module Problem002 where

import EulerLib

main :: IO ()
main = print $ sum $ filter (\n -> rem n 2 == 0) $ takeWhile (\n -> n < 4000000) fibs
