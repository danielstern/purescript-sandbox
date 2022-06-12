module Main where
  
import Prelude (Unit, (-),(*))
import Effect (Effect)
import Effect.Console

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: Effect Unit
main = do
  logShow ( factorial 7 )