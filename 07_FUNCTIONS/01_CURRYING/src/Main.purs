module Main where
  
import Prelude (Unit, (<), negate, discard)
import Effect (Effect)
import Effect.Console

replaceUserValue :: Int -> Int -> Int
replaceUserValue a b = if a < 1 then b else a

replaceUserValueWith5 :: Int -> Int
replaceUserValueWith5 a = replaceUserValue a 5

value1 :: Int
value1 = replaceUserValue (-1) 4

value2 :: Int
value2 = replaceUserValue 2 4

value3 :: Int
value3 = replaceUserValueWith5 (-2)

main :: Effect Unit
main = do
  logShow value1
  logShow value2
  logShow value3