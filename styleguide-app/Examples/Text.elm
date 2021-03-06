module Examples.Text exposing (example)

{-|

@docs example

-}

import Category exposing (Category(..))
import Html.Styled as Html
import Html.Styled.Attributes as Attributes
import ModuleExample exposing (ModuleExample)
import Nri.Ui.Heading.V2 as Heading
import Nri.Ui.Text.V4 as Text
import Sort.Set as Set exposing (Set)


{-| -}
example : ModuleExample msg
example =
    { name = "Nri.Ui.Text.V4"
    , categories = Set.fromList Category.sorter <| List.singleton Text
    , content =
        let
            exampleHtml kind =
                [ Html.text "This is a "
                , Html.strong [] [ Html.text kind ]
                , Html.text ". "
                , Html.a
                    [ Attributes.href "http://www.noredink.com"
                    , Attributes.target "_blank"
                    ]
                    [ Html.text "The quick brown fox jumps over the lazy dog." ]
                , Html.text " Be on the lookout for a new and improved assignment creation form! Soon, you'll be able to easily see a summary of the content you're assigning, as well as an estimate for how long the assignment will take."
                ]

            exampleUGHtml kind =
                [ Html.text "This is a "
                , Html.strong [] [ Html.text kind ]
                , Html.text ". The quick brown fox jumps over the lazy dog."
                , Html.text " When I stepped out, into the bright sunlight from the darkness of the movie house, I had only two things on my mind: Paul Newman, and a ride home."
                ]
        in
        [ Text.caption [ Html.text "NOTE: When using these styles, please read the documentation in the Elm module about \"Understanding spacing\"" ]
        , Heading.h2 [ Heading.style Heading.Top ] [ Html.text "Paragraph styles" ]
        , Text.mediumBody (exampleHtml "mediumBody")
        , Text.smallBody (exampleHtml "smallBody")
        , Text.smallBodyGray (exampleHtml "smallBodyGray")
        , Text.caption (exampleHtml "caption")
        , Heading.h2 [ Heading.style Heading.Top ] [ Html.text "Paragraph styles for user-authored content" ]
        , Text.ugMediumBody (exampleUGHtml "ugMediumBody")
        , Text.ugSmallBody (exampleUGHtml "ugSmallBody")
        ]
    }
