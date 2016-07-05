module Problem023 where

-- Quite slow but it should finish in decent time
-- NB: Numbers above 20161 are always the sum of 2 abundants. This upper limit is
-- lower than the one in the problem statement

import EulerLib
import Data.List

abundants = filter abundantNum [1..20161]

isSum n = any (\x -> abundantNum (n - x)) (takeWhile (< n) abundants)

main :: IO ()
main = print $ sum $ filter (not . isSum) [1..20161]
