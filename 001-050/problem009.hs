module Problem009 where

main :: IO ()
main = print $ head [a*b*c | a <- [1..999], b <- [a..999], c <- [b..999], a^2 + b^2 == c^2, a + b + c == 1000]
