module BinarySearchSpec where

import Test.Hspec

import BinarySearch

spec :: Spec
spec = do

  describe "BinarySearch" $ do

    describe "1, 2, 3 in tree" $ do

      let tree = treeInsert 3 (treeInsert 2 (treeInsert 1 emptyTree))

      it "treeElem 0 tree" $ do
        (treeElem 0 tree) `shouldBe` False

      it "treeElem 1 tree" $ do
        (treeElem 1 tree) `shouldBe` True

main :: IO()
main = do
  hspec spec
