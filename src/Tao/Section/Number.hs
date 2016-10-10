module Tao.Section.Number
  ( SectionNumber
  , generateSectionNumber
  , toSectionNumber
  , toInt
  ) where

import           Prelude
import           System.Random (randomRIO)

data SectionNumber = SectionNumber !Int

instance Show SectionNumber where
  show (SectionNumber int) = show int

generateSectionNumber :: IO SectionNumber
generateSectionNumber = SectionNumber <$> randomRIO (minSectionNumber, maxSectionNumber)

toSectionNumber :: Int -> Maybe SectionNumber
toSectionNumber int
  | int >= minSectionNumber && int <= maxSectionNumber = Just $ SectionNumber int
  | otherwise                                          = Nothing

maxSectionNumber :: Int
maxSectionNumber = 81

minSectionNumber :: Int
minSectionNumber = 1

toInt                     :: SectionNumber -> Int
toInt (SectionNumber int) = int
