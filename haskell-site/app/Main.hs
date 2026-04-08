module Main (main) where

import MicroRetailX.App (runApp)
import MicroRetailX.Config (AppConfig (..), defaultConfig)
import System.Environment (lookupEnv)
import Text.Read (readMaybe)

main :: IO ()
main = do
  maybePort <- lookupEnv "PORT"
  let resolvedPort = maybe (cfgPort defaultConfig) id (maybePort >>= readMaybe)
      config = defaultConfig {cfgPort = resolvedPort}
  runApp config
