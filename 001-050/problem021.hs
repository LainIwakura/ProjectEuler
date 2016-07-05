module Problem021 where

import EulerLib

main :: IO ()
main = print $ sum $ amicableNums
  where amicableNums = map (\n -> fst n) 
                     $ filter (\m -> snd m == True) 
                     $ map (\x -> (x, amicable x)) [220..9999]
