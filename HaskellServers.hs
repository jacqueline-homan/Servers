module Main where
import Control.Monad
import Happstack.Server (nullConf, simpleHTTP, ok, dir)
main :: IO ()
main = simpleHTTP nullConf $ msum [ mzero
                                  , ok "Hello, Jacque!"
                                  , ok "Unreachable ServerPartT"
                                  ]
(ToMessage a) => ServerPartT IO a                         