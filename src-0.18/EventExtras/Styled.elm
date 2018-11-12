module EventExtras.Styled exposing (onClickForLinkWithHref, onClickPreventDefaultForLinkWithHref)

import Html.Styled as Html
import Html.Styled.Events exposing (..)
import Json.Decode


{-| This is necessary to use in single-page apps (SPA) when intercepting the
`onClick` of `<a>` tags that trigger navigation within the app,
as a normal `onClickPreventDefault` will prevent the user from opening the link
in a new tab/window.

(From <https://github.com/elm-lang/html/issues/110>)

-}
onClickPreventDefaultForLinkWithHref : msg -> Html.Attribute msg
onClickPreventDefaultForLinkWithHref msg =
    let
        isSpecialClick : Json.Decode.Decoder Bool
        isSpecialClick =
            Json.Decode.map2
                (\isCtrl isMeta -> isCtrl || isMeta)
                (Json.Decode.field "ctrlKey" Json.Decode.bool)
                (Json.Decode.field "metaKey" Json.Decode.bool)

        succeedIfFalse : a -> Bool -> Json.Decode.Decoder a
        succeedIfFalse msg preventDefault =
            case preventDefault of
                False ->
                    Json.Decode.succeed msg

                True ->
                    Json.Decode.fail "succeedIfFalse: condition was True"
    in
    onWithOptions "click"
        { stopPropagation = False
        , preventDefault = True
        }
        (isSpecialClick
            |> Json.Decode.andThen (succeedIfFalse msg)
        )


{-| This is necessary to use when intercepting the
`onClick` of `<a>` tags that trigger navigation within the app,
as a normal `onClick` will prevent the user from opening the link
in a new tab/window.

(From <https://github.com/elm-lang/html/issues/110>)

-}
onClickForLinkWithHref : msg -> Html.Attribute msg
onClickForLinkWithHref msg =
    let
        isSpecialClick : Json.Decode.Decoder Bool
        isSpecialClick =
            Json.Decode.map2
                (\isCtrl isMeta -> isCtrl || isMeta)
                (Json.Decode.field "ctrlKey" Json.Decode.bool)
                (Json.Decode.field "metaKey" Json.Decode.bool)

        succeedIfFalse : a -> Bool -> Json.Decode.Decoder a
        succeedIfFalse msg preventDefault =
            case preventDefault of
                False ->
                    Json.Decode.succeed msg

                True ->
                    Json.Decode.fail "succeedIfFalse: condition was True"
    in
    onWithOptions "click"
        { stopPropagation = False
        , preventDefault = False
        }
        (isSpecialClick
            |> Json.Decode.andThen (succeedIfFalse msg)
        )
