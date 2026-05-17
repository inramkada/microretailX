module MicroRetailX.Config
  ( AppConfig(..)
  , defaultConfig
  ) where

-- | Runtime configuration for the HTTP server.
data AppConfig = AppConfig
  { cfgPort :: Int
  , cfgStaticDir :: FilePath
  } deriving (Eq, Show)

-- | Production-friendly defaults for local/dev execution.
defaultConfig :: AppConfig
defaultConfig =
  AppConfig
    { cfgPort = 8080
    , cfgStaticDir = "static"
    }
