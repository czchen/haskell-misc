module ListComprehension
( list1
, list2
) where

list1 = [x*2 | x <- [1..10]]

list2 = [x*2 | x <- [1..10], x<=5]
