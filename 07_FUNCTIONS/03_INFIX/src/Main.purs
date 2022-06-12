module Main where
  
import Prelude (Unit, discard, (+))
import Effect (Effect)
import Effect.Console

type Customer = 
  {
    firstname :: String,
    totalPurchases :: Number
  }

type Purchase = 
  {
    cost :: Number
  }

customer1 :: Customer
customer1 = {
  firstname : "Henry",
  totalPurchases : 312.96
}

purchase1 :: Purchase
purchase1 = 
  {
    cost : 89.00
  }

addPurchase :: Customer -> Purchase -> Customer
addPurchase a b = {
  firstname : a.firstname,
  totalPurchases : a.totalPurchases + b.cost
}

customer1b :: Customer
customer1b = addPurchase customer1 purchase1

customer1c :: Customer
customer1c = customer1 `addPurchase` purchase1

infixr 5 addPurchase as <+>

customer1d :: Customer
customer1d = customer1 <+> purchase1

main :: Effect Unit
main = do
  logShow customer1
  logShow customer1b
  logShow customer1c
  logShow customer1d