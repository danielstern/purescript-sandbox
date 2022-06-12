module Main where
  
import Prelude (Unit, discard, (<), (>), negate, otherwise)
import Effect (Effect)
import Effect.Console

evaluateCustomerSpend :: Number -> String
evaluateCustomerSpend 0.0 = "NONE"
evaluateCustomerSpend s   | s < 0.0 = "VENDOR"
                          | s < 100.0 = "NEW CUSTOMER"
                          | s > 500.0 = "BIG SPENDER"
                          | otherwise = "CUSTOMER"

main :: Effect Unit
main = do
  log ( evaluateCustomerSpend 0.0 )
  log ( evaluateCustomerSpend 101.0 )
  log ( evaluateCustomerSpend (-101.0) )
  log ( evaluateCustomerSpend 500.50 )