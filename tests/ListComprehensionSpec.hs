module ListComprehensionSpec where

import Test.Hspec

import ListComprehension

spec :: Spec
spec = do

  describe "Check list value" $ do

    it "list1" $ do
      list1 `shouldBe` [2,4,6,8,10,12,14,16,18,20]

    it "list2" $ do
      list2 `shouldBe` [2,4,6,8,10]

main :: IO()
main = do
  hspec spec
