module Main where
  
import Effect
import Effect.Console
import Prelude (Unit, (<>), discard)
import Data.String (toUpper)

firstname :: String
firstname = "Globomantics"

lastname :: String
lastname = "Customer"

fullname :: String
fullname = firstname <> lastname

ufullname :: String
ufullname = toUpper fullname

main :: Effect Unit
main = do
  log fullname
  log ufullname