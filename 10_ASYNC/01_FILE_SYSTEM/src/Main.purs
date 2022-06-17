module Main where
  
import Prelude
import Effect (Effect)
import Effect.Console

import Node.Path (FilePath)
import Node.Encoding (Encoding(..))
import Node.FS.Aff (readTextFile, writeTextFile)
import Effect.Aff (Aff, launchAff_)

duplicateCustomerData :: FilePath -> FilePath -> Aff Unit
duplicateCustomerData filePath1 filePath2 = do
  customer_data <- readTextFile UTF8 filePath1
  writeTextFile UTF8 filePath2 customer_data

main :: Effect Unit
main = launchAff_ do
  duplicateCustomerData "database/customer1.json" "database/customer1-COPY.json"