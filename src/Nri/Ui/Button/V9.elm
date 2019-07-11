module Nri.Ui.Button.V9 exposing
    ( ButtonOrLink, build
    , renderButton, renderLink
    , withLabel
    , onClick, href
    , linkSpa, linkExternal, linkWithMethod, linkWithTracking, linkExternalWithTracking
    , small, medium, large
    , exactWidth, unboundedWidth, fillContainerWidth
    , primary, secondary, danger, premium
    , enabled, unfulfilled, disabled, error, loading, success
    , withIcon
    , withCustomAttributes
    , delete
    , toggleButton
    )

{-|


# Changes from V8:

  - Changes API to be attribute-based, rather than config-based


# Create and render a button or link


## Begin building a button or link

@docs ButtonOrLink, build


## Render a button or link

@docs renderButton, renderLink


## Label the button

@docs withLabel


## Add event listeners and links

@docs onClick, href
@docs linkSpa, linkExternal, linkWithMethod, linkWithTracking, linkExternalWithTracking


## Size the button

@docs small, medium, large
@docs exactWidth, unboundedWidth, fillContainerWidth


## Change the color scheme

@docs primary, secondary, danger, premium


## Change the state (buttons only)

@docs enabled, unfulfilled, disabled, error, loading, success


## Add an icon

@docs withIcon


## Add custom attributes

@docs withCustomAttributes


# Commonly-used buttons

@docs delete
@docs toggleButton

-}

import Accessibility.Styled as Html exposing (Attribute, Html)
import Accessibility.Styled.Role as Role
import Accessibility.Styled.Widget as Widget
import Css exposing (Style)
import Css.Global
import EventExtras.Styled as EventExtras
import Html as RootHtml
import Html.Styled as Styled
import Html.Styled.Attributes as Attributes
import Html.Styled.Events as Events
import Json.Decode
import Markdown.Block
import Markdown.Inline
import Nri.Ui
import Nri.Ui.AssetPath as AssetPath exposing (Asset)
import Nri.Ui.Colors.Extra as ColorsExtra
import Nri.Ui.Colors.V1 as Colors
import Nri.Ui.Fonts.V1
import Nri.Ui.Html.Attributes.V2 as AttributesExtra
import Nri.Ui.Svg.V1 as NriSvg exposing (Svg)
import Svg
import Svg.Attributes


styledName : String -> String
styledName suffix =
    "Nri-Ui-Button-V9-" ++ suffix


{-| -}
type ButtonOrLink msg
    = ButtonOrLink
        { onClick : Maybe msg
        , url : String
        , linkType : Link
        , size : ButtonSize
        , style : ButtonStyle
        , width : ButtonWidth
        , label : String
        , state : ButtonState
        , icon : Maybe Svg
        , customAttributes : List (Html.Attribute msg)
        }


{-| -}
build : ButtonOrLink msg
build =
    ButtonOrLink
        { onClick = Nothing
        , url = "#"
        , linkType = Default
        , size = Medium
        , style = Primary
        , width = WidthUnbounded
        , label = ""
        , state = Enabled
        , icon = Nothing
        , customAttributes = []
        }


{-| -}
onClick : msg -> ButtonOrLink msg -> ButtonOrLink msg
onClick msg (ButtonOrLink config) =
    ButtonOrLink
        { onClick = Just msg
        , url = config.url
        , linkType = config.linkType
        , size = config.size
        , style = config.style
        , width = config.width
        , label = config.label
        , state = config.state
        , icon = config.icon
        , customAttributes = config.customAttributes
        }


{-| -}
href : String -> ButtonOrLink msg -> ButtonOrLink msg
href url (ButtonOrLink config) =
    ButtonOrLink
        { onClick = config.onClick
        , url = url
        , linkType = config.linkType
        , size = config.size
        , style = config.style
        , width = config.width
        , label = config.label
        , state = config.state
        , icon = config.icon
        , customAttributes = config.customAttributes
        }


type Link
    = Default
    | WithTracking
    | SinglePageApp
    | WithMethod String
    | External
    | ExternalWithTracking


{-| Use this link for routing within a single page app.

This will make a normal <a> tag, but change the Events.onClick behavior to avoid reloading the page.

See <https://github.com/elm-lang/html/issues/110> for details on this implementation.

-}
linkSpa : ButtonOrLink msg -> ButtonOrLink msg
linkSpa buttonOrLink =
    buttonOrLink


{-| Wrap some text so it looks like a button, but actually is wrapped in an anchor to
some url, and it's an HTTP request (Rails includes JS to make this use the given HTTP method)
-}
linkWithMethod : String -> ButtonOrLink msg -> ButtonOrLink msg
linkWithMethod method (ButtonOrLink config) =
    ButtonOrLink { config | linkType = WithMethod method }


{-| Wrap some text so it looks like a button, but actually is wrapped in an anchor to some url.
This should only take in messages that result in a Msg that triggers Analytics.trackAndRedirect. For buttons that trigger other effects on the page, please use Nri.Button.button instead
-}
linkWithTracking : ButtonOrLink msg -> ButtonOrLink msg
linkWithTracking (ButtonOrLink config) =
    ButtonOrLink { config | linkType = WithTracking }


{-| Wrap some text so it looks like a button, but actually is wrapped in an anchor to
some url and have it open to an external site
-}
linkExternal : ButtonOrLink msg -> ButtonOrLink msg
linkExternal (ButtonOrLink config) =
    ButtonOrLink { config | linkType = External }


{-| Wrap some text so it looks like a button, but actually is wrapped in an anchor to some url and have it open to an external site

This should only take in messages that result in tracking events. For buttons that trigger other effects on the page, please use Nri.Ui.Button.V2.button instead

-}
linkExternalWithTracking : ButtonOrLink msg -> ButtonOrLink msg
linkExternalWithTracking (ButtonOrLink config) =
    ButtonOrLink { config | linkType = ExternalWithTracking }


{-|

    Button.build
        |> Button.withLabel "My Link"
        |> Button.unboundedWidth
        |> Button.secondary
        |> Button.onClick TrackThisEvent
        |> Button.linkExternalWithTracking
        |> Button.href "#"
        |> Button.renderLink

-}
renderLink : ButtonOrLink msg -> Html msg
renderLink (ButtonOrLink config) =
    let
        linkBase linkFunctionName extraAttrs =
            Nri.Ui.styled Styled.a
                (styledName linkFunctionName)
                [ buttonStyles config.size config.width config.style ]
                (Attributes.href config.url :: extraAttrs)
                [ viewLabel config.icon config.label ]
    in
    case config.linkType of
        Default ->
            linkBase "link"
                (Attributes.target "_self" :: config.customAttributes)

        SinglePageApp ->
            linkBase "linkSpa"
                ((Maybe.map EventExtras.onClickPreventDefaultForLinkWithHref config.onClick
                    |> Maybe.withDefault AttributesExtra.none
                 )
                    :: config.customAttributes
                )

        WithMethod method ->
            linkBase "linkWithMethod"
                (Attributes.attribute "data-method" method
                    :: config.customAttributes
                )

        WithTracking ->
            linkBase
                "linkWithTracking"
                ((Maybe.map
                    (\msg ->
                        Events.preventDefaultOn "click"
                            (Json.Decode.succeed ( msg, True ))
                    )
                    config.onClick
                    |> Maybe.withDefault AttributesExtra.none
                 )
                    :: config.customAttributes
                )

        External ->
            linkBase "linkExternal"
                (Attributes.target "_blank" :: config.customAttributes)

        ExternalWithTracking ->
            linkBase "linkExternalWithTracking"
                (List.append
                    [ Attributes.target "_blank"
                    , Maybe.map EventExtras.onClickForLinkWithHref config.onClick
                        |> Maybe.withDefault AttributesExtra.none
                    ]
                    config.customAttributes
                )


{-| -}
withCustomAttributes : List (Html.Attribute msg) -> ButtonOrLink msg -> ButtonOrLink msg
withCustomAttributes customAttributes (ButtonOrLink config) =
    ButtonOrLink { config | customAttributes = customAttributes }


{-| -}
withLabel : String -> ButtonOrLink msg -> ButtonOrLink msg
withLabel label (ButtonOrLink config) =
    ButtonOrLink { config | label = label }


{-| -}
small : ButtonOrLink msg -> ButtonOrLink msg
small =
    setSize Small


{-| -}
medium : ButtonOrLink msg -> ButtonOrLink msg
medium =
    setSize Medium


{-| -}
large : ButtonOrLink msg -> ButtonOrLink msg
large =
    setSize Large


setSize : ButtonSize -> ButtonOrLink msg -> ButtonOrLink msg
setSize size (ButtonOrLink config) =
    ButtonOrLink { config | size = size }


{-| -}
withIcon : Svg -> ButtonOrLink msg -> ButtonOrLink msg
withIcon icon (ButtonOrLink config) =
    ButtonOrLink { config | icon = Just icon }


{-| Sizes for buttons and links that have button classes
-}
type ButtonSize
    = Small
    | Medium
    | Large


{-| -}
exactWidth : Int -> ButtonOrLink msg -> ButtonOrLink msg
exactWidth inPx =
    setWidth (WidthExact inPx)


{-| -}
unboundedWidth : ButtonOrLink msg -> ButtonOrLink msg
unboundedWidth =
    setWidth WidthUnbounded


{-| -}
fillContainerWidth : ButtonOrLink msg -> ButtonOrLink msg
fillContainerWidth =
    setWidth WidthFillContainer


setWidth : ButtonWidth -> ButtonOrLink msg -> ButtonOrLink msg
setWidth width (ButtonOrLink config) =
    ButtonOrLink { config | width = width }


{-| Width sizing behavior for buttons.

`WidthExact Int` defines a size in `px` for the button's total width, and
`WidthUnbounded` leaves the maxiumum width unbounded (there is a minimum width).

-}
type ButtonWidth
    = WidthExact Int
    | WidthUnbounded
    | WidthFillContainer


{-| -}
primary : ButtonOrLink msg -> ButtonOrLink msg
primary =
    setStyle Primary


{-| -}
secondary : ButtonOrLink msg -> ButtonOrLink msg
secondary =
    setStyle Secondary


{-| -}
danger : ButtonOrLink msg -> ButtonOrLink msg
danger =
    setStyle Danger


{-| -}
premium : ButtonOrLink msg -> ButtonOrLink msg
premium =
    setStyle Premium


setStyle : ButtonStyle -> ButtonOrLink msg -> ButtonOrLink msg
setStyle style (ButtonOrLink config) =
    ButtonOrLink { config | style = style }


{-| Styleguide-approved styles for your buttons!
-}
type ButtonStyle
    = Primary
    | Secondary
    | Danger
    | Premium
      -- The following styles cannot be set directly.
      -- Use a helper like `unfulfilled` to change the state instead.
    | InactiveColors
    | LoadingColors
    | SuccessColors
    | ErrorColors


{-| An enabled button. Takes the appearance of ButtonStyle.
-}
enabled : ButtonOrLink msg -> ButtonOrLink msg
enabled =
    setButtonState Enabled


{-| A button which appears with the InactiveColors palette but is not disabled.
-}
unfulfilled : ButtonOrLink msg -> ButtonOrLink msg
unfulfilled =
    setButtonState Unfulfilled


{-| A button which appears with the InactiveColors palette and is disabled.
-}
disabled : ButtonOrLink msg -> ButtonOrLink msg
disabled =
    setButtonState Disabled


{-| A button which appears with the ErrorColors palette and is disabled.
-}
error : ButtonOrLink msg -> ButtonOrLink msg
error =
    setButtonState Error


{-| A button which appears with the LoadingColors palette and is disabled.
-}
loading : ButtonOrLink msg -> ButtonOrLink msg
loading =
    setButtonState Loading


{-| A button which appears with the SuccessColors palette and is disabled .
-}
success : ButtonOrLink msg -> ButtonOrLink msg
success =
    setButtonState Success


setButtonState : ButtonState -> ButtonOrLink msg -> ButtonOrLink msg
setButtonState buttonState (ButtonOrLink config) =
    ButtonOrLink { config | state = buttonState }


{-| Describes the state of a button. Has consequences for appearance and disabled attribute.
-}
type ButtonState
    = Enabled
    | Unfulfilled
    | Disabled
    | Error
    | Loading
    | Success


{-| A delightful button which can trigger an effect when clicked!

    Button.build
        |> Button.withLabel model.label
        |> Button.small
        |> Button.withCustomAttributes [ Html.Styled.Attributes.class "my-best-button" ]
        |> Button.onClick DoSomething
        |> Button.renderButton

-}
renderButton : ButtonOrLink msg -> Html msg
renderButton (ButtonOrLink config) =
    let
        ( buttonStyle_, isDisabled ) =
            case config.state of
                Enabled ->
                    ( config.style, False )

                Disabled ->
                    ( InactiveColors, True )

                Error ->
                    ( ErrorColors, True )

                Unfulfilled ->
                    ( InactiveColors, False )

                Loading ->
                    ( LoadingColors, True )

                Success ->
                    ( SuccessColors, True )
    in
    Nri.Ui.styled Html.button
        (styledName "customButton")
        [ buttonStyles config.size config.width buttonStyle_ ]
        ((Maybe.map Events.onClick config.onClick
            |> Maybe.withDefault AttributesExtra.none
         )
            :: Attributes.disabled isDisabled
            :: Attributes.type_ "button"
            :: config.customAttributes
        )
        [ viewLabel config.icon config.label ]



-- DELETE BUTTON


{-| A delete button (blue X)
-}
delete : { label : String, onClick : msg } -> Html msg
delete config =
    Nri.Ui.styled Html.button
        (styledName "delete")
        [ Css.display Css.inlineBlock
        , Css.backgroundRepeat Css.noRepeat
        , Css.backgroundColor Css.transparent
        , Css.backgroundPosition Css.center
        , Css.backgroundSize Css.contain
        , Css.border Css.zero
        , Css.width (Css.px 15)
        , Css.height (Css.px 15)
        , Css.padding Css.zero
        , Css.margin2 Css.zero (Css.px 6)
        , Css.cursor Css.pointer
        , Css.color Colors.azure
        ]
        [ Events.onClick config.onClick
        , Attributes.type_ "button"
        , -- reference: https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Techniques/Using_the_button_role#Labeling_buttons
          Widget.label config.label
        ]
        [ Svg.svg [ Svg.Attributes.viewBox "0 0 25 25" ]
            [ Svg.title [] [ RootHtml.text "Delete" ]
            , Svg.path
                [ Svg.Attributes.fill "#146aff" -- TODO: this should be azure, but css colors aren't extractable afaik
                , Svg.Attributes.d "M1.067 6.015c-1.423-1.422-1.423-3.526 0-4.948 1.422-1.423 3.526-1.423 4.948 0l6.371 6.37 6.371-6.37c1.422-1.423 3.783-1.423 5.176 0 1.423 1.422 1.423 3.782 0 5.176l-6.37 6.37 6.37 6.372c1.423 1.422 1.423 3.526 0 4.948-1.422 1.423-3.526 1.423-4.948 0l-6.371-6.37-6.371 6.37c-1.422 1.423-3.783 1.423-5.176 0-1.423-1.422-1.423-3.782 0-5.176l6.37-6.143-6.37-6.599z"
                ]
                []
            ]
            |> Styled.fromUnstyled
        ]



-- TOGGLE BUTTON


{-| A button that can be toggled into a pressed state and back again.
-}
toggleButton :
    { label : String
    , onSelect : msg
    , onDeselect : msg
    , pressed : Bool
    }
    -> Html msg
toggleButton config =
    let
        toggledStyles =
            if config.pressed then
                Css.batch
                    [ Css.color Colors.gray20
                    , Css.backgroundColor Colors.glacier
                    , Css.boxShadow5 Css.inset Css.zero (Css.px 3) Css.zero (ColorsExtra.withAlpha 0.2 Colors.gray20)
                    , Css.border3 (Css.px 1) Css.solid Colors.azure
                    , Css.fontWeight Css.bold
                    ]

            else
                Css.batch
                    []
    in
    Nri.Ui.styled Html.button
        (styledName "toggleButton")
        [ buttonStyles Medium WidthUnbounded Secondary
        , toggledStyles
        ]
        [ Events.onClick
            (if config.pressed then
                config.onDeselect

             else
                config.onSelect
            )
        , Widget.pressed <| Just config.pressed

        -- reference: https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Techniques/Using_the_button_role#Labeling_buttons
        , Role.button

        -- Note: setting type: 'button' removes the default behavior of submit
        -- equivalent to preventDefaultBehavior = false
        -- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#attr-name
        , Attributes.type_ "button"
        ]
        [ viewLabel Nothing config.label ]


buttonStyles : ButtonSize -> ButtonWidth -> ButtonStyle -> Style
buttonStyles size width colors =
    Css.batch
        [ buttonStyle
        , sizeStyle size width
        , colorStyle
            (case colors of
                Primary ->
                    { background = Colors.azure
                    , hover = Colors.azureDark
                    , text = Colors.white
                    , border = Nothing
                    , shadow = Colors.azureDark
                    }

                Secondary ->
                    { background = Colors.white
                    , hover = Colors.glacier
                    , text = Colors.azure
                    , border = Just <| Colors.azure
                    , shadow = Colors.azure
                    }

                Danger ->
                    { background = Colors.red
                    , hover = Colors.redDark
                    , text = Colors.white
                    , border = Nothing
                    , shadow = Colors.redDark
                    }

                Premium ->
                    { background = Colors.yellow
                    , hover = Colors.ochre
                    , text = Colors.navy
                    , border = Nothing
                    , shadow = Colors.ochre
                    }

                InactiveColors ->
                    { background = Colors.gray92
                    , hover = Colors.gray92
                    , text = Colors.gray45
                    , border = Nothing
                    , shadow = Colors.gray92
                    }

                LoadingColors ->
                    { background = Colors.glacier
                    , hover = Colors.glacier
                    , text = Colors.navy
                    , border = Nothing
                    , shadow = Colors.glacier
                    }

                SuccessColors ->
                    { background = Colors.greenDark
                    , hover = Colors.greenDark
                    , text = Colors.white
                    , border = Nothing
                    , shadow = Colors.greenDark
                    }

                ErrorColors ->
                    { background = Colors.purple
                    , hover = Colors.purple
                    , text = Colors.white
                    , border = Nothing
                    , shadow = Colors.purple
                    }
            )
        ]


viewLabel : Maybe Svg -> String -> Html msg
viewLabel maybeSvg label =
    Nri.Ui.styled Html.span
        "button-label-span"
        [ Css.overflow Css.hidden -- Keep scrollbars out of our button
        , Css.overflowWrap Css.breakWord -- Ensure that words that exceed the button width break instead of disappearing
        , Css.padding2 (Css.px 2) Css.zero -- Without a bit of bottom padding, text that extends below the baseline, like "g" gets cut off
        ]
        []
        (case maybeSvg of
            Nothing ->
                renderMarkdown label

            Just svg ->
                NriSvg.toHtml svg :: renderMarkdown label
        )


renderMarkdown : String -> List (Html msg)
renderMarkdown markdown =
    case Markdown.Block.parse Nothing markdown of
        -- It seems to be always first wrapped in a `Paragraph` and never directly a `PlainInline`
        [ Markdown.Block.Paragraph _ inlines ] ->
            List.map (Markdown.Inline.toHtml >> Styled.fromUnstyled) inlines

        _ ->
            [ Html.text markdown ]



-- STYLES


buttonStyle : Style
buttonStyle =
    Css.batch
        [ Css.cursor Css.pointer
        , -- Specifying the font can and should go away after bootstrap is removed from application.css
          Nri.Ui.Fonts.V1.baseFont
        , Css.textOverflow Css.ellipsis
        , Css.overflow Css.hidden
        , Css.textDecoration Css.none
        , Css.backgroundImage Css.none
        , Css.textShadow Css.none
        , Css.property "transition" "background-color 0.2s, color 0.2s, box-shadow 0.2s, border 0.2s, border-width 0s"
        , Css.boxShadow Css.none
        , Css.border Css.zero
        , Css.marginBottom Css.zero
        , Css.hover [ Css.textDecoration Css.none ]
        , Css.disabled [ Css.cursor Css.notAllowed ]
        , Css.display Css.inlineFlex
        , Css.alignItems Css.center
        , Css.justifyContent Css.center
        ]


type alias ColorPalette =
    { background : Css.Color
    , hover : Css.Color
    , text : Css.Color
    , border : Maybe Css.Color
    , shadow : Css.Color
    }


colorStyle : ColorPalette -> Style
colorStyle colorPalette =
    Css.batch
        [ Css.color colorPalette.text
        , Css.backgroundColor colorPalette.background
        , Css.fontWeight (Css.int 700)
        , Css.textAlign Css.center
        , case colorPalette.border of
            Nothing ->
                Css.borderStyle Css.none

            Just color ->
                Css.batch
                    [ Css.borderColor color
                    , Css.borderStyle Css.solid
                    ]
        , Css.borderBottomStyle Css.solid
        , Css.borderBottomColor colorPalette.shadow
        , Css.fontStyle Css.normal
        , Css.hover
            [ Css.color colorPalette.text
            , Css.backgroundColor colorPalette.hover
            , Css.disabled [ Css.backgroundColor colorPalette.background ]
            ]
        , Css.visited [ Css.color colorPalette.text ]
        ]


sizeStyle : ButtonSize -> ButtonWidth -> Style
sizeStyle size width =
    let
        config =
            case size of
                Small ->
                    { fontSize = 15
                    , height = 36
                    , imageHeight = 15
                    , shadowHeight = 2
                    , minWidth = 75
                    }

                Medium ->
                    { fontSize = 17
                    , height = 45
                    , imageHeight = 15
                    , shadowHeight = 3
                    , minWidth = 100
                    }

                Large ->
                    { fontSize = 20
                    , height = 56
                    , imageHeight = 20
                    , shadowHeight = 4
                    , minWidth = 200
                    }

        sizingAttributes =
            let
                verticalPaddingPx =
                    2
            in
            [ Css.minHeight (Css.px config.height)
            , Css.paddingTop (Css.px verticalPaddingPx)
            , Css.paddingBottom (Css.px verticalPaddingPx)
            ]

        widthAttributes =
            case width of
                WidthExact pxWidth ->
                    [ Css.maxWidth (Css.pct 100)
                    , Css.width (Css.px <| toFloat pxWidth)
                    , Css.paddingRight (Css.px 4)
                    , Css.paddingLeft (Css.px 4)
                    ]

                WidthUnbounded ->
                    [ Css.paddingLeft (Css.px 16)
                    , Css.paddingRight (Css.px 16)
                    , Css.minWidth (Css.px config.minWidth)
                    ]

                WidthFillContainer ->
                    [ Css.paddingLeft (Css.px 16)
                    , Css.paddingRight (Css.px 16)
                    , Css.minWidth (Css.px config.minWidth)
                    , Css.width (Css.pct 100)
                    ]

        lineHeightPx =
            case size of
                Small ->
                    15

                Medium ->
                    19

                Large ->
                    22
    in
    Css.batch
        [ Css.fontSize (Css.px config.fontSize)
        , Css.borderRadius (Css.px 8)
        , Css.lineHeight (Css.px lineHeightPx)
        , Css.boxSizing Css.borderBox
        , Css.borderWidth (Css.px 1)
        , Css.borderBottomWidth (Css.px config.shadowHeight)
        , Css.batch sizingAttributes
        , Css.batch widthAttributes
        , Css.Global.descendants
            [ Css.Global.img
                [ Css.height (Css.px config.imageHeight)
                , Css.marginRight (Css.px <| config.imageHeight / 6)
                , Css.position Css.relative
                , Css.bottom (Css.px 2)
                , Css.verticalAlign Css.middle
                ]
            , Css.Global.svg
                [ Css.height (Css.px config.imageHeight) |> Css.important
                , Css.width (Css.px config.imageHeight) |> Css.important
                , Css.marginRight (Css.px <| config.imageHeight / 6)
                , Css.position Css.relative
                , Css.bottom (Css.px 2)
                , Css.verticalAlign Css.middle
                ]
            , Css.Global.svg
                [ Css.important <| Css.height (Css.px config.imageHeight)
                , Css.important <| Css.width Css.auto
                , Css.maxWidth (Css.px (config.imageHeight * 1.25))
                , Css.paddingRight (Css.px <| config.imageHeight / 6)
                , Css.position Css.relative
                , Css.bottom (Css.px 2)
                , Css.verticalAlign Css.middle
                ]
            ]
        ]