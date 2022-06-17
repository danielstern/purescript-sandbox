module Main where
  
import Prelude (Unit, (*))
import Effect (Effect)
import Effect.Console

cube :: Number -> Number
cube n = n * n * n

main :: Effect Unit
main = do
  logShow ( cube 9.0 )