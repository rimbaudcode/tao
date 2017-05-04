module Utils.Numeric
  ( isInteger
  ) where

import Prelude (Bool (..), Integer, String, String, reads)

isInteger :: String -> Bool
isInteger s =
  case reads s :: [(Integer, String)] of
    [(_, "")] -> True
    _         -> False
