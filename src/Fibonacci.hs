module Fibonacci
( fibs
) where

fibs :: [Integer]
fibs = 1:1:[ x + y
           | x <- fibs
           | y <- tail fibs ]
