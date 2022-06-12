module Main where
  
import Prelude
import Effect
import Effect.Console

surveyComplete :: Boolean
surveyComplete = false

productPurchased :: Boolean
productPurchased = false

productNeverPurchased :: Boolean
productNeverPurchased = not productPurchased

completeAndPurchased :: Boolean
completeAndPurchased = surveyComplete && productPurchased

completeOrPurchased :: Boolean
completeOrPurchased = surveyComplete || productPurchased

main :: Effect Unit
main = do
  logShow surveyComplete
  if surveyComplete
    then log "Survey has been completed"
    else log "Survey NOT yet completed"
  logShow completeAndPurchased
  if completeOrPurchased
    then log "Customer has interacted with products"
    else log "Customer has never interacted with products"
  logShow productNeverPurchased
  logShow productPurchased