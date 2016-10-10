module Tao.Section.Text
  ( getSectionText
  ) where

import           Data.Text.Lazy        (Text)
import qualified Data.Text.Lazy.IO     as I
import           Paths_tao             (getDataFileName)
import           Prelude
import           System.FilePath.Posix ((<.>), (</>))
import           Tao.Section.Number    (SectionNumber)

type SectionText = Text

getSectionText     :: SectionNumber -> IO SectionText
getSectionText num = I.readFile =<< getDataFileName (mkSectionFilePath num)

mkSectionFilePath     :: SectionNumber -> FilePath
mkSectionFilePath num = "data" </> show num <.> "tao"
