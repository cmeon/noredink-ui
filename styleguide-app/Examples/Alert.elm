module Examples.Alert exposing (example)

{-|

@docs example

-}

import Assets exposing (assets)
import ModuleExample as ModuleExample exposing (Category(..), ModuleExample)
import Nri.Ui.Alert.V3 as Alert


example : ModuleExample msg
example =
    { filename = "Nri.Ui.Alert.V3.elm"
    , category = Messaging
    , content =
        [ Alert.error "This is an error"
        , Alert.warning assets "This is a warning"
        , Alert.tip assets "This is a tip"
        , Alert.success assets "This is a success"
        ]
    }
