module Main (main) where

import           Data.Text.Lazy.IO  (putStr)
import           Prelude            hiding (putStr)
import           Tao.Section.Number (generateSectionNumber)
import           Tao.Section.Text   (getSectionText)

main :: IO ()
main = putStr =<< getSectionText =<< generateSectionNumber
