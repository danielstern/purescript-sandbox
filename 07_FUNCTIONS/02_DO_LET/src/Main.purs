module Main where
  
import Prelude
import Effect (Effect)
import Effect.Console
import Data.Int (floor)

computeCustomerBonus :: Number -> Number -> Boolean -> Boolean -> Int
computeCustomerBonus a b c d = do
  let e = a * b
  let g = if c then e * 1.5 else e
  let h = if d then g * 0.66 else g
  floor h
  
main :: Effect Unit
main = do
  logShow ( computeCustomerBonus 12.3 6.14 true false )