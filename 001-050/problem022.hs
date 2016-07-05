module Problem022 where

import Data.List
import Data.Maybe

letterScore :: Char -> Int
letterScore c = succ . fromJust $ elemIndex c ['A'..'Z']

wordScore :: (Int, [Char]) -> Int
wordScore (n, w) = n * (sum $ map letterScore w)

-- Relies on the file already being sorted with no extra characters i.e, '"' or ','
main :: IO ()
main = do
        names <- readFile "names.txt"
        let lnames = lines $ names
        let posNames = map (\x -> (succ . fromJust $ elemIndex x lnames, x)) lnames
        print . sum $ map wordScore posNames
