module Problem004 where

isPali x = x == (read . reverse . show $ x)

main :: IO ()
main = print . maximum $ [x*y | x <- [100..999], y <- [100..999], isPali(x*y)]
