module Main where
  
import Prelude (Unit, (==), class Eq)
import Effect (Effect)
import Effect.Console

newtype Customer = Customer
  {  firstname :: String,
     _id :: String
  }

c1 :: Customer
c1 = Customer {
  firstname : "customer1",
  _id: "C1"
}

c2 :: Customer
c2 = Customer {
  firstname : "customer2",
  _id: "C1"
}

instance eqCustomer :: Eq Customer where
  eq (Customer a) (Customer b) = a._id == b._id

main :: Effect Unit
main = do
  logShow ( c1 == c2 )