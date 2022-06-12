module Main where
  
import Prelude (Unit,(+))
import Effect (Effect)
import Effect.Console
import Data.Array (foldl)

purchases :: Array Number
purchases = [3.91, 66.12, 104.32, 8.96, 0.32, 1.00]

sum :: Number
sum = foldl (\x b -> x + b) 0.00 purchases

main :: Effect Unit
main = do
  logShow sum