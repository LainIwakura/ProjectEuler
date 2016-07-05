module Problem025 where

import EulerLib

main :: IO ()
main = print $ length $ takeWhile (<10^999) fibs
