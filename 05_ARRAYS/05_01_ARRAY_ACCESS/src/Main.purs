module Main where
  
import Prelude (Unit, (#), discard)
import Effect (Effect)
import Effect.Console
import Data.Array ((!!))
import Data.Maybe (fromMaybe)

customers :: Array String
customers = ["C_1","C_3","C_4","C_11"]


main :: Effect Unit
main = do
  log ( customers !! 10 # fromMaybe "C_?")
  log ( customers !! 2 # fromMaybe "C_?")