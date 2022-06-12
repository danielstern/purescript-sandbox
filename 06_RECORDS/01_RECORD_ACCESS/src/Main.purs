module Main where
  
import Prelude (Unit, discard)
import Effect (Effect)
import Effect.Console

type CustomerPreference =
  {
    firstname :: String,
    darkmode:: Boolean,
    age :: Int,
    textSizeScale :: Number 
  }

aPreference :: CustomerPreference
aPreference = 
  {
    firstname : "Customer",
    darkmode : true,
    age : 33,
    textSizeScale : 0.81  
  }

bPreference :: CustomerPreference
bPreference = 
  {
    firstname : "Spender",
    darkmode : false,
    age: 62,
    textSizeScale : 1.2

  }

main :: Effect Unit
main = do
  logShow aPreference.firstname
  logShow ( _.darkmode aPreference )
  logShow bPreference.textSizeScale