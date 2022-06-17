module Main where
  
import Prelude (Unit, bind, pure)
import Effect.Aff (launchAff_, Aff)
import Effect (Effect)
import Effect.Class.Console (log)

import Affjax as AX
import Affjax.Node as AN
import Affjax.ResponseFormat as ResponseFormat

import Data.Either (Either(..))

get :: String -> Aff String
get url = do
  result <- AN.get ResponseFormat.string url
  pure case result of
    Left err -> AX.printError err
    Right response -> response.body

main :: Effect Unit
main = launchAff_ do
  str <- get "https://www5xa.gutenberg.org/cache/epub/2258/pg2258.txt"
  log str