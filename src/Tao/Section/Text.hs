module Tao.Section.Text
  ( getSectionText
  ) where

import Data.Text.Lazy        (Text)
import Data.Text.Lazy.IO     (readFile)
import Paths_tao             (getDataFileName)
import Prelude               (FilePath, IO, show, (.), (=<<))
import System.FilePath.Posix ((<.>), (</>))
import Tao.Section.Number    (SectionNumber)

type SectionText = Text

getSectionText :: SectionNumber -> IO SectionText
getSectionText = (readFile =<<) . getDataFileName . mkSectionFilePath

mkSectionFilePath :: SectionNumber -> FilePath
mkSectionFilePath = (<.> "tao") . ("data" </>) . show
