{-# LANGUAGE ApplicativeDo #-}

module Tao.Section.Number
  ( SectionNumber
  , getSectionNumber
  , toSectionNumber
  , toInt
  ) where

import Prelude       (IO, Int, Maybe (..), Show, otherwise, show, ($), (&&),
                      (<$>), (<=), (>=))
import System.Random (randomRIO)

data SectionNumber = SectionNumber !Int

instance Show SectionNumber where
  show (SectionNumber int) = show int

getSectionNumber :: IO SectionNumber
getSectionNumber = SectionNumber <$> randomRIO (minSectionNumber, maxSectionNumber)

toSectionNumber :: Int -> Maybe SectionNumber
toSectionNumber int
  | int >= minSectionNumber && int <= maxSectionNumber = Just $ SectionNumber int
  | otherwise                                          = Nothing

maxSectionNumber, minSectionNumber :: Int
maxSectionNumber = 81
minSectionNumber = 1

toInt                     :: SectionNumber -> Int
toInt (SectionNumber int) = int
