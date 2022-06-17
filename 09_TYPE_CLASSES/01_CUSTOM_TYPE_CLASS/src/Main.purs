module Main where
  
import Prelude (Unit, discard)
import Effect (Effect)
import Effect.Console

class Readable a where
  readable :: a -> String

instance readableInt :: Readable Int where
  readable 1 = "NOT SATISFIED"
  readable 2 = "SOMEWHAT SATISFIED"
  readable 3 = "SATISFIED!"
  readable _ = "UNKNOWN"

instance readableBool :: Readable Boolean where
  readable true = "SATISFIED!"
  readable false = "NOT SATISFIED"

main :: Effect Unit
main = do
  log ( readable 1 )
  log ( readable 3 )
  log ( readable 7 )
  log ( readable true )