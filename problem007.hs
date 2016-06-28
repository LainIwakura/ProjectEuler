module Problem007 where

import Math.NumberTheory.Primes.Sieve

main :: IO ()
main = print $ primes !! 10000
