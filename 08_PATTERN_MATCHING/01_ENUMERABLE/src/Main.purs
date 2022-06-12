module Main where
  
import Prelude (Unit, discard)
import Effect (Effect)
import Effect.Console

rating :: Int -> String
rating 5 = "EXCELLENT"
rating 4 = "GOOD"
rating 3 = "NEUTRAL"
rating 2 = "POOR"
rating 1 = "VERY POOR"
rating _ = "UNKNOWN"

main :: Effect Unit
main = do
  logShow ( rating 4 )
  logShow ( rating 2 )
  logShow ( rating 5 )
  logShow ( rating 8 )