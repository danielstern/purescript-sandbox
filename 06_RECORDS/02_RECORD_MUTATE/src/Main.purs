module Main where
  
import Prelude (Unit, (+), discard)
import Effect (Effect)
import Effect.Console

type Customer = 
  {
    purchaseTotal :: Number
  }

customer1 :: Customer
customer1 = 
  {
    purchaseTotal : 17.50
  }

modifyTotal :: Customer -> Number -> Customer
modifyTotal a b = {
  purchaseTotal : a.purchaseTotal + b
}

main :: Effect Unit
main = do
  logShow ( modifyTotal customer1 5.0)
  logShow customer1
  logShow ( modifyTotal customer1 7.9)
  -- logShow customer1.purchaseTotal
  -- customer1.purchaseTotal = customer1.purchaseTotal + 5.0
  -- logShow customer1.purchaseTotal