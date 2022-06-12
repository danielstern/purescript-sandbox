module Main where
  
import Prelude (Unit, map, (*), (<$>), (<#>), discard)
import Effect (Effect)
import Effect.Console

scores :: Array Int
scores = [ 1, 0, 3, 2, 5, 4, 0, 0, 1 ]

normalize :: Int -> Int
normalize n = n * 2

main :: Effect Unit
main = do
  logShow ( map normalize scores )
  logShow ( normalize <$> scores )
  logShow ( scores <#> normalize )
