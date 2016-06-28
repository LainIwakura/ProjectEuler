module Problem003 where

import Math.NumberTheory.Primes.Factorisation

main :: IO ()
main = print $ maximum $ map fst $ factorise 600851475143
