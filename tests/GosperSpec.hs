module GosperSpec where

import Test.Hspec

import Gosper

spec :: Spec
spec = do

  describe "getGosperListFrom" $ do

    it "from 1" $ do
      (take 10 $ getGosperListFrom 1) `shouldBe` [1,2,4,8,16,32,64,128,256,512]

    it "from 0" $ do
      getGosperListFrom 0 `shouldBe` []

main :: IO()
main = do
  hspec spec
