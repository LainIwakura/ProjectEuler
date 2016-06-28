module Problem006 where

main :: IO ()
main = print $ abs $ (sum [x^2 | x <- [1..100]]) - (sum [1..100])^2
