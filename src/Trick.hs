module Trick
( isPowOf2
) where

import Data.Bits

isPowOf2 :: Integer -> Bool
isPowOf2 x = (x .&. (x - 1)) == 0
