module Problem012 where

import EulerLib

-- probably not super efficient but it runs decently enough
main :: IO ()
main = print $ triangulars !! (length $ takeWhile (\x -> length(factors x) <= 500) triangulars)
