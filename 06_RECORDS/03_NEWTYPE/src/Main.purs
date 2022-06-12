module Main where
  
import Prelude (Unit, (+))
import Effect (Effect)
import Data.Show (class Show)
import Data.Semiring (class Semiring)
import Effect.Console

newtype Balance = Balance Number

derive newtype instance Show Balance
derive newtype instance Semiring Balance

a :: Balance
a = Balance 7.16

b :: Balance
b = Balance 2.10

c :: Balance
c = a + b

main :: Effect Unit
main = do
  logShow c