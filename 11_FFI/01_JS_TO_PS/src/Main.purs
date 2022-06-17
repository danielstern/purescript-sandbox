module Main where
  
import Prelude (Unit)
import Effect (Effect)
import Effect.Console

foreign import generateHash :: String -> String

main :: Effect Unit
main = do
  log ( generateHash "X")