module Problem010 where

import Math.NumberTheory.Primes.Sieve

main :: IO ()
main = print $ sum $ takeWhile (< 2000000) primes
