module FibonacciSpec where

import Test.Hspec

import Fibonacci

spec :: Spec
spec = do

  describe "Fibonacci number" $ do

    it "first 10" $ do
      (take 10 fibs) `shouldBe` [1,1,2,3,5,8,13,21,34,55]

main :: IO()
main = do
  hspec spec
