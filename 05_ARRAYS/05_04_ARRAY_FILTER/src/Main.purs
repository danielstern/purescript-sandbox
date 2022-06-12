module Main where
  
import Prelude (Unit, negate, (>))
import Effect (Effect)
import Effect.Console
import Data.Array

customerAnswers :: Array Int
customerAnswers = [3, 5, -1, 4, -1, 1, 2, 1, 2, -1, 5]

filterNegativeAnswers :: Int -> Boolean
filterNegativeAnswers n = n > 0

validCustomerAnswers :: Array Int
validCustomerAnswers = filter filterNegativeAnswers customerAnswers

main :: Effect Unit
main = do
  logShow validCustomerAnswers