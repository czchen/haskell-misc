module Gosper
( getGosperListFrom
) where

import Data.Bits

next :: Integer -> Integer
next x
  | x <= 0 = 0
  | otherwise =
    let
      y = x .&. (- x) -- the least significant one bit of x
      c = x + y
    in
      (((x `xor` c) `shiftR` 2) `div` y) .|. c

getGosperListFrom :: Integer -> [Integer]
getGosperListFrom x
  | x <= 0 = []
  | otherwise = x: (getGosperListFrom $ next x)
