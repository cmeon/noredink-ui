module Main exposing (init, main)

import Browser exposing (Document, UrlRequest(..))
import Browser.Navigation exposing (Key)
import Css exposing (..)
import Css.Global exposing (Snippet)
import Headings
import Html as RootHtml
import Html.Attributes
import Html.Styled as Html exposing (Html, img)
import Html.Styled.Attributes as Attributes exposing (..)
import ModuleExample as ModuleExample exposing (Category(..), ModuleExample, categoryForDisplay)
import Nri.Ui.Colors.V1 as Colors
import Nri.Ui.Css.VendorPrefixed as VendorPrefixed
import Nri.Ui.Fonts.V1 as Fonts
import NriModules as NriModules exposing (ModuleStates, nriThemedModules)
import Routes as Routes exposing (Route(..))
import Url exposing (Url)


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        , onUrlRequest = OnUrlRequest
        , onUrlChange = OnUrlChange
        }


init : () -> Url -> Key -> ( Model, Cmd Msg )
init () url key =
    ( { route = Routes.fromLocation url
      , moduleStates = NriModules.init
      , navigationKey = key
      }
    , Cmd.none
    )


type alias Model =
    { -- Global UI
      route : Route
    , moduleStates : ModuleStates
    , navigationKey : Key
    }


view : Model -> Document Msg
view model =
    { title = "Style Guide"
    , body =
        [ view_ model |> Html.toUnstyled
        , RootHtml.node "link"
            [ Html.Attributes.href "https://fonts.googleapis.com/css?family=Muli:400,400i,600,600i,700,700i,800,800i,900,900i"
            , Html.Attributes.rel "stylesheet"
            ]
            []
        , RootHtml.div [ Html.Attributes.id "svg-target" ] []
        , RootHtml.node "SCRIPT" [ Html.Attributes.src "bundle.js" ] []
        ]
    }


view_ : Model -> Html Msg
view_ model =
    Html.div []
        [ Css.Global.global layoutFixer
        , Html.styled Html.div
            [ displayFlex
            , alignItems flexStart
            ]
            []
            [ navigation model.route
            , Html.styled Html.div
                [ flexGrow (int 1) ]
                []
                (case model.route of
                    Routes.Doodad doodad ->
                        [ Headings.h2
                            [ Html.a [ Attributes.href "#" ] [ Html.text "(see all)" ] ]
                        , nriThemedModules model.moduleStates
                            |> List.filter (\m -> m.filename == doodad)
                            |> List.map (ModuleExample.view True)
                            |> Html.div []
                            |> Html.map UpdateModuleStates
                        ]

                    Routes.Category category ->
                        [ Html.styled Html.section
                            [ sectionStyles ]
                            []
                            [ newComponentsLink
                            , Headings.h2 [ Html.text (Debug.toString category) ]
                            , nriThemedModules model.moduleStates
                                |> List.filter (\doodad -> category == doodad.category)
                                |> List.map (ModuleExample.view True)
                                |> Html.div []
                                |> Html.map UpdateModuleStates
                            ]
                        ]

                    Routes.All ->
                        [ Html.styled Html.section
                            [ sectionStyles ]
                            []
                            [ newComponentsLink
                            , Headings.h2 [ Html.text "NRI-Themed Modules" ]
                            , Headings.h3 [ Html.text "All Categories" ]
                            , nriThemedModules model.moduleStates
                                |> List.map (ModuleExample.view True)
                                |> Html.div []
                                |> Html.map UpdateModuleStates
                            ]
                        ]
                )
            ]
        ]


newComponentsLink : Html Msg
newComponentsLink =
    Html.div []
        [ Headings.h2 [ Html.text "New Styleguide Components" ]
        , Html.div []
            [ Html.text "Future styleguide components can be found in "
            , Html.a [ href "https://app.zeplin.io/project/5973fb495395bdc871ebb055" ] [ Html.text "this Zepplin" ]
            , Html.text "."
            ]
        ]


navigation : Route -> Html Msg
navigation route =
    let
        isActive category =
            case route of
                Routes.Category routeCategory ->
                    category == routeCategory

                _ ->
                    False

        navLink category =
            Html.li []
                [ Html.styled Html.a
                    [ backgroundColor transparent
                    , borderStyle none
                    , if isActive category then
                        color Colors.navy

                      else
                        color Colors.azure
                    ]
                    [ Attributes.href <| "#category/" ++ Debug.toString category ]
                    [ Html.text (categoryForDisplay category) ]
                ]
    in
    Html.styled Html.div
        [ flexBasis (px 300)
        , backgroundColor Colors.gray92
        , marginRight (px 40)
        , padding (px 25)
        , VendorPrefixed.value "position" "sticky"
        , top (px 150)
        , flexShrink zero
        ]
        []
        [ Headings.h4
            [ Html.text "Categories" ]
        , Html.styled Html.ul
            [ margin4 zero zero (px 40) zero
            , Css.Global.children
                [ Css.Global.selector "li"
                    [ margin2 (px 10) zero
                    ]
                ]
            ]
            []
          <|
            Html.li []
                [ Html.styled Html.a
                    [ backgroundColor transparent
                    , borderStyle none
                    , if route == Routes.All then
                        color Colors.navy

                      else
                        color Colors.azure
                    ]
                    [ Attributes.href "#" ]
                    [ Html.text "All" ]
                ]
                :: List.map
                    navLink
                    [ Text
                    , TextWriting
                    , Fonts
                    , Colors
                    , Layout
                    , Inputs
                    , Buttons
                    , Icons
                    , Behaviors
                    , Messaging
                    , Modals
                    , Writing
                    , DynamicSymbols
                    , Pages
                    , QuestionTypes
                    ]
        ]


sectionStyles : Css.Style
sectionStyles =
    Css.batch [ margin2 (px 40) zero ]


layoutFixer : List Snippet
layoutFixer =
    -- TODO: remove when universal header seizes power
    [ Css.Global.selector "#header-menu"
        [ Css.property "float" "none"
        ]
    , Css.Global.selector "#page-container"
        [ maxWidth (px 1400)
        ]
    , Css.Global.selector ".anonymous .log-in-button"
        [ Css.property "float" "none"
        , right zero
        , top zero
        ]
    , Css.Global.selector ".l-inline-blocks"
        [ textAlign right
        ]
    , Css.Global.everything
        [ fontFamily inherit
        ]
    , Css.Global.body
        [ Fonts.baseFont
        ]
    ]


type Msg
    = UpdateModuleStates NriModules.Msg
    | OnUrlRequest Browser.UrlRequest
    | OnUrlChange Url
    | NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update action model =
    case action of
        UpdateModuleStates msg ->
            let
                ( moduleStates, cmd ) =
                    NriModules.update msg model.moduleStates
            in
            ( { model | moduleStates = moduleStates }
            , Cmd.map UpdateModuleStates cmd
            )

        OnUrlRequest request ->
            case request of
                Internal loc ->
                    ( model, Browser.Navigation.pushUrl model.navigationKey (Url.toString loc) )

                External loc ->
                    ( model, Browser.Navigation.load loc )

        OnUrlChange route ->
            ( { model | route = Routes.fromLocation route }, Cmd.none )

        NoOp ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.map UpdateModuleStates (NriModules.subscriptions model.moduleStates)
