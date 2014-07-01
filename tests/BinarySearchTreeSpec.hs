module BinarySearchTreeSpec where

import Test.Hspec

import BinarySearchTree

spec :: Spec
spec = do

  describe "BinarySearch" $ do

    describe "insert 10, 10, 9, 11" $ do

      let tree = treeInsert 11 $ treeInsert 9 $ treeInsert 10 $ treeInsert 10 emptyTree

      it "treeElem 8 tree" $ do
        (treeElem 8 tree) `shouldBe` False

      it "treeElem 9 tree" $ do
        (treeElem 9 tree) `shouldBe` True

      it "treeElem 10 tree" $ do
        (treeElem 10 tree) `shouldBe` True

      it "treeElem 11 tree" $ do
        (treeElem 11 tree) `shouldBe` True

      it "treeElem 12 tree" $ do
        (treeElem 12 tree) `shouldBe` False

main :: IO()
main = do
  hspec spec
