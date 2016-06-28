module Problem005 where

-- easiest way to do this is to take the prime factors of 1..20
-- the LCM of all of those numbers must have as many factors of each
-- prime that appears in the factorizations
 
main :: IO ()
main = print $ (2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19)
