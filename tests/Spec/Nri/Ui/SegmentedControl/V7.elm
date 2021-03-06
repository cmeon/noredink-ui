module Spec.Nri.Ui.SegmentedControl.V7 exposing (spec)

import Accessibility.Aria as Aria
import Accessibility.Widget as Widget
import Expect
import Html.Attributes
import Html.Styled
import Nri.Ui.AssetPath exposing (Asset(..))
import Nri.Ui.SegmentedControl.V7 as SegmentedControl
import Test exposing (..)
import Test.Html.Event as Event
import Test.Html.Query as Query
import Test.Html.Selector as Selector


type Msg a
    = Selected a


toggleView : { options : List a, selected : a } -> Query.Single (Msg a)
toggleView config =
    SegmentedControl.viewToggle
        { onClick = \new -> Selected new
        , options =
            config.options
                |> List.map (\o -> { value = o, icon = Nothing, label = "a label" })
        , selected = config.selected
        , width = SegmentedControl.FitContent
        }
        |> Html.Styled.toUnstyled
        |> Query.fromHtml


spec : Test
spec =
    describe "Nri.Ui.SegmentedControl.V7"
        [ describe "viewToggle"
            [ test "displays the correct amount of options" <|
                \() ->
                    toggleView
                        { options = [ 1, 2, 3 ]
                        , selected = 1
                        }
                        |> Query.findAll [ Selector.text "a label" ]
                        |> Query.count (Expect.equal 3)
            , test "shows the correct item as selected" <|
                \() ->
                    toggleView
                        { options = [ 1, 2, 3 ]
                        , selected = 2
                        }
                        |> Query.findAll [ Selector.id "Nri-Ui-SegmentedControl-Tab-a-label" ]
                        |> Query.index 1
                        |> Query.has [ Selector.attribute (Widget.selected True) ]
            , test "always has one item selected" <|
                \() ->
                    toggleView
                        { options = [ 1, 2, 3 ]
                        , selected = 2
                        }
                        |> Query.findAll [ Selector.attribute (Widget.selected True) ]
                        |> Query.count (Expect.equal 1)
            , test "shows the correct item as selected when the button was clicked" <|
                \() ->
                    toggleView
                        { options = [ 1, 2, 3 ]
                        , selected = 1
                        }
                        |> Query.findAll [ Selector.id "Nri-Ui-SegmentedControl-Tab-a-label" ]
                        |> Query.index 1
                        |> Event.simulate Event.click
                        |> Event.expect (Selected 2)
            ]
        ]
