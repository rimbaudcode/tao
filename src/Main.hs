module Main (main) where

import qualified Data.Text.Lazy.IO  as I
import           Prelude
import           Tao.Section.Number (generateSectionNumber)
import           Tao.Section.Text   (getSectionText)

main :: IO ()
main = I.putStr =<< getSectionText =<< generateSectionNumber
