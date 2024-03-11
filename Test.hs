module Main where

import Test.Tasty
import Test.Tasty.HUnit
import MyLib

casosFizzBuzz :: [(Int,String)]
casosFizzBuzz = [(n, someFunc n) | n <- [1..35]]

fizzbuzzTest :: [TestTree]
fizzbuzzTest = map (\(input, expected) ->
                        testCase (show input ++ " is " ++ expected) $
                            number input @?= expected) casosFizzBuzz


fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests" fizzbuzzTest

main :: IO ()
main = defaultMain fizzBuzzSuite
