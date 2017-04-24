module Tao.Section.Text
  ( getSectionText
  ) where

import           Data.Text.Lazy        (Text)
import           Data.Text.Lazy.IO     (readFile)
import           Paths_tao             (getDataFileName)
import           Prelude               hiding (readFile)
import           System.FilePath.Posix ((<.>), (</>))
import           Tao.Section.Number    (SectionNumber)

type SectionText = Text

getSectionText     :: SectionNumber -> IO SectionText
getSectionText num = readFile =<< getDataFileName (mkSectionFilePath num)

mkSectionFilePath     :: SectionNumber -> FilePath
mkSectionFilePath num = "data" </> show num <.> "tao"
