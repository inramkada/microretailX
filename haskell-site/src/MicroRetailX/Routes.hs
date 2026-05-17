module MicroRetailX.Routes
  ( routes
  ) where

import qualified Data.Text.Lazy as TL
import Network.HTTP.Types.Status (status404)
import Network.Wai.Middleware.RequestLogger (logStdoutDev)
import Network.Wai.Middleware.Static (Policy, addBase, noDots, staticPolicy, (>->))
import Web.Scotty

staticFilesPolicy :: FilePath -> Policy
staticFilesPolicy baseDir = noDots >-> addBase baseDir

routes :: FilePath -> ScottyM ()
routes staticDir = do
  middleware logStdoutDev
  middleware $ staticPolicy (staticFilesPolicy staticDir)

  get "/" $ file (staticDir <> "/index.html")
  get "/health" $ text "ok"

  notFound $ do
    status status404
    html $ TL.fromStrict "<!doctype html><html><body><h1>404</h1></body></html>"
