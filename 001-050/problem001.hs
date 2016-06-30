module Problem1 where

main :: IO ()
main = print calcAnswer
  where calcAnswer = sum [x | x <- [1..999], rem x 3 == 0 || rem x 5 == 0]
