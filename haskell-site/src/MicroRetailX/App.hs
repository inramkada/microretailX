module MicroRetailX.App
  ( runApp
  ) where

import MicroRetailX.Config (AppConfig (..))
import MicroRetailX.Routes (routes)
import Web.Scotty (scotty)

runApp :: AppConfig -> IO ()
runApp cfg = scotty (cfgPort cfg) (routes (cfgStaticDir cfg))
