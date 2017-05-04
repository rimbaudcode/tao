{-# LANGUAGE ApplicativeDo #-}

module Main (main) where

import Data.Text.Lazy.IO  (putStr)
import Prelude            (IO, (=<<))
import Tao.Section.Number (getSectionNumber)
import Tao.Section.Text   (getSectionText)

main :: IO ()
main = putStr =<< getSectionText =<< getSectionNumber
