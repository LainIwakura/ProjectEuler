module Problem015 where

main :: IO ()
main = print $ product [21..40] `div` product [2..20]
