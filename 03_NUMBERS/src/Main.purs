module Main where
  
import Effect
import Effect.Console
import Prelude (Unit, discard, (+), (-), (*), (/))
import Data.Int (round, toNumber)
import Data.Number

averageCustomerSatisfaction :: Number
averageCustomerSatisfaction  = 5.3

b :: Number
b = 7.21

c :: Number
c = averageCustomerSatisfaction + b

d :: Number
d = averageCustomerSatisfaction / b

e :: Number
e = averageCustomerSatisfaction * b

f :: Int
f = 42

g :: Int
g = round averageCustomerSatisfaction

h :: Number
h = toNumber f

main :: Effect Unit
main = do
  logShow averageCustomerSatisfaction
  logShow c
  logShow d
  logShow e
  logShow f
  logShow g
  logShow h