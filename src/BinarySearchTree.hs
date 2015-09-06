 {-# LANGUAGE UnicodeSyntax #-}

module BinarySearchTree
( Tree
, emptyTree
, treeInsert
, treeElem
) where

data Tree a = EmptyTree
            | Node a (Tree a) (Tree a)
            deriving (Show, Read, Eq)

emptyTree = EmptyTree

treeInsert :: (Ord a) ⇒ a → Tree a → Tree a
treeInsert x EmptyTree = Node x emptyTree emptyTree
treeInsert x (Node y left right)
  | x == y = Node y left right
  | x < y  = Node y (treeInsert x left) right
  | x > y  = Node y left (treeInsert x right)

treeElem :: (Ord a) ⇒ a → Tree a → Bool
treeElem x EmptyTree = False
treeElem x (Node y left right)
  | x == y = True
  | x < y  = treeElem x left
  | x > y  = treeElem x right
