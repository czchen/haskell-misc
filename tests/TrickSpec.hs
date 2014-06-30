module TrickSpec where

import Test.Hspec

import Trick

spec :: Spec
spec = do

  describe "isPowOf2" $ do

    it "1024" $ do
      (isPowOf2 1024) `shouldBe` True

    it "1023" $ do
      (isPowOf2 1023) `shouldBe` False

main :: IO()
main = do
  hspec spec
