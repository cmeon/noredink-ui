module Nri.Ui.UiIcon.V1 exposing
    ( seeMore, openClose, download, sort, gear, flipper, sortArrow
    , unarchive, share, preview, skip, copyToClipboard, gift
    , activity
    , footsteps, compass, speedometer, bulb, help
    , hat, keychain
    , sprout, sapling, tree
    , person, class, leaderboard, performance
    , calendar, clock
    , document, newspaper
    , edit, pen
    , arrowTop, arrowRight, arrowDown, arrowLeft, arrowPointingRight
    , checkmark, x
    , attention, exclamation
    , flag, star, starOutline
    , equals, plus
    , key, lock, premiumLock
    , badge
    )

{-|

@docs seeMore, openClose, download, sort, gear, flipper, sortArrow
@docs unarchive, share, preview, skip, copyToClipboard, gift
@docs activity
@docs footsteps, compass, speedometer, bulb, help
@docs hat, keychain
@docs sprout, sapling, tree
@docs person, class, leaderboard, performance
@docs calendar, clock
@docs document, newspaper
@docs edit, pen
@docs arrowTop, arrowRight, arrowDown, arrowLeft, arrowPointingRight
@docs checkmark, x
@docs attention, exclamation
@docs flag, star, starOutline
@docs equals, plus
@docs key, lock, premiumLock
@docs badge

    import Html.Styled exposing (..)
    import Nri.Ui.Colors.V1 as Colors
    import Nri.Ui.Svg.V1 as Svg
    import Nri.Ui.UiIcon.V1 as UiIcon

    view : Html msg
    view =
        Svg.toHtml (Svg.withColor Colors.lichen UiIcon.unarchive)

-}

import Nri.Ui.Svg.V1
import Svg.Styled as Svg
import Svg.Styled.Attributes as Attributes


{-| -}
unarchive : Nri.Ui.Svg.V1.Svg
unarchive =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path
            [ Attributes.fill "currentcolor"
            , Attributes.fillRule "evenodd"
            , Attributes.d "M.858 22.7c.026.233.104.46.228.66.128.205.292.385.484.531.202.154.428.274.669.355.25.085.515.129.78.129h18.954a2.435 2.435 0 0 0 1.455-.484c.19-.145.356-.323.484-.526.124-.2.202-.425.228-.66l.85-7.696a1.716 1.716 0 0 0-.49-1.403 1.94 1.94 0 0 0-.653-.431 2.244 2.244 0 0 0-.841-.16H1.999a2.239 2.239 0 0 0-.84.16 1.93 1.93 0 0 0-.653.431 1.724 1.724 0 0 0-.4.634 1.72 1.72 0 0 0-.097.769l.849 7.69zm6.327-5.2a.906.906 0 0 1 .213-.3c.097-.09.209-.16.332-.206.132-.05.271-.076.413-.076a1.149 1.149 0 0 1 .764.282c.1.082.183.184.243.3.058.112.09.237.093.365l.042 1.376h6.427l.041-1.376h.001a.86.86 0 0 1 .09-.366.992.992 0 0 1 .24-.3c.102-.088.22-.158.346-.205a1.162 1.162 0 0 1 .832 0c.123.047.236.116.331.205a.834.834 0 0 1 .282.666l-.112 2.283a.837.837 0 0 1-.099.35.973.973 0 0 1-.234.284 1.176 1.176 0 0 1-.739.26H8.307c-.137 0-.275-.024-.404-.071a1.119 1.119 0 0 1-.348-.181.967.967 0 0 1-.234-.285.828.828 0 0 1-.1-.349l-.112-2.283a.83.83 0 0 1 .076-.374zM18.635 2.81h-2.183l.065-.962A2.715 2.715 0 0 0 16.35.717c0-.031-.026-.06-.038-.092l3.493.001c.588 0 1.089.427 1.187 1.012l1.616 9.548h-2.433l-1.358-8.204a.193.193 0 0 0-.19-.162l.007-.009zM8.932.707h.001a2.713 2.713 0 0 0-.167 1.139l.066.962H6.649a.194.194 0 0 0-.19.164l-1.358 8.214H2.668l1.616-9.545A1.209 1.209 0 0 1 5.474.628h3.492c-.014.037-.03.058-.04.09l.007-.01zM8.795 4.68a.812.812 0 0 0-.064.263.767.767 0 0 0 .182.542.844.844 0 0 0 .161.152 1.172 1.172 0 0 0 .432.179c.08.015.163.024.245.024h1.16l-.132 4.095a.91.91 0 0 0 .275.686 1.037 1.037 0 0 0 .719.29h1.73a1.044 1.044 0 0 0 .719-.29.91.91 0 0 0 .275-.686l-.133-4.097h1.213c.095 0 .19-.012.281-.034.09-.022.178-.056.26-.101a.839.839 0 0 0 .357-.36.782.782 0 0 0 .06-.547.845.845 0 0 0-.115-.255.916.916 0 0 0-.091-.116L13.413 1.2a.833.833 0 0 0-.154-.135 1.136 1.136 0 0 0-1.24 0 .851.851 0 0 0-.155.135L8.952 4.417a.939.939 0 0 0-.164.252l.007.01z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
share : Nri.Ui.Svg.V1.Svg
share =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 30 30"
        ]
        [ Svg.path
            [ Attributes.d "M18.5,0.1H1.8C0.3,0.1,0,0.5,0,1.9v26.2C0,29.7,0.4,30,1.8,30h26.3c1.5,0,1.8-0.3,1.8-1.8V12.3l-3.1,2.6v12H3.1V3.2h12.4L18.5,0.1z M23,9.9v4.2l7-7l-7-7v3.5C6.8,4.2,6.8,19.7,6.8,19.7S11.6,10.6,23,9.9z"
            ]
            []
        , Svg.path
            [ Attributes.fill "none"
            , Attributes.d "M18.5,0.1H1.8C0.3,0.1,0,0.5,0,1.9v26.2C0,29.7,0.4,30,1.8,30h26.3c1.5,0,1.8-0.3,1.8-1.8V12.3l-3.1,2.6v12H3.1V3.2h12.4L18.5,0.1z M23,9.9v4.2l7-7l-7-7v3.5C6.8,4.2,6.8,19.7,6.8,19.7S11.6,10.6,23,9.9z"
            ]
            []
        , Svg.path
            [ Attributes.fill "none"
            , Attributes.d "M-793.3-401V715h1024V-401H-793.3z"
            ]
            []
        , Svg.path
            [ Attributes.fill "none"
            , Attributes.d "M-815.4-385.9v1116h1024v-1116L-815.4-385.9L-815.4-385.9z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
seeMore : Nri.Ui.Svg.V1.Svg
seeMore =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 30 30"
        ]
        [ Svg.ellipse [ Attributes.cx "8.1", Attributes.cy "15", Attributes.rx "2.3", Attributes.ry "2.2" ] []
        , Svg.ellipse [ Attributes.cx "15", Attributes.cy "15", Attributes.rx "2.3", Attributes.ry "2.2" ] []
        , Svg.ellipse [ Attributes.cx "21.5", Attributes.cy "15", Attributes.rx "2.3", Attributes.ry "2.2" ] []
        , Svg.path [ Attributes.d "M28.3,0H1.9C1.1,0,0.7,0.1,0.4,0.4C0.1,0.7,0,1.1,0,1.9v26.2C0,29.7,0.4,30,1.8,30H27h1.1h0.1c0.1,0,0.2,0,0.3,0c0,0,0.1,0,0.1,0c0.1,0,0.3,0,0.4-0.1c0,0,0,0,0,0c0.8-0.2,1-0.6,1-1.7V1.9C30.1,0.4,29.7,0,28.3,0z M26.8,27H3.1v-0.1V3.2V3.1h0.1H27v23.8V27H26.8z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
preview : Nri.Ui.Svg.V1.Svg
preview =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 5 25 15"
        , Attributes.fillRule "evenodd"
        ]
        [ Svg.path [ Attributes.d "M12.5,5 C18.0555556,5 25,12.5 25,12.5 C25,12.5 18.0555556,20 12.5,20 C6.94444444,20 0,12.5 0,12.5 C3.2637037,9.26571429 7.62444444,5.19964286 12.5,5 Z M12.5,8.48214286 C10.1981481,8.48214286 8.33333333,10.28 8.33333333,12.5 C8.33333333,14.7196429 10.1981481,16.5178571 12.5,16.5178571 C14.8018519,16.5178571 16.6666667,14.7196429 16.6666667,12.5 C16.6666667,10.28 14.8018519,8.48214286 12.5,8.48214286 Z M12.5,14.5089286 C11.35,14.5089286 10.4166667,13.6085714 10.4166667,12.5 C10.4166667,11.3910714 11.35,10.4910714 12.5,10.4910714 C13.65,10.4910714 14.5833333,11.3910714 14.5833333,12.5 C14.5833333,13.6085714 13.65,14.5089286 12.5,14.5089286 Z" ] [] ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
copyToClipboard : Nri.Ui.Svg.V1.Svg
copyToClipboard =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 20 20"
        ]
        [ Svg.g
            [ Attributes.transform "translate(-188.000000, -218.000000)"
            ]
            [ Svg.g
                [ Attributes.transform "translate(66.000000, 207.000000)" ]
                [ Svg.g
                    [ Attributes.transform "translate(112.000000, 0.000000)" ]
                    [ Svg.g []
                        [ Svg.g
                            [ Attributes.transform "translate(10.000000, 11.000000)" ]
                            [ Svg.path [ Attributes.d "M14.9605333,4.04693333 L1.07093333,4.04693333 C0.522933333,4.04693333 0.0781333333,4.49173333 0.0781333333,5.03946667 L0.0781333333,18.9301333 C0.0781333333,19.4770667 0.524,19.9218667 1.06986667,19.9218667 L14.9605333,19.9218667 C15.5072,19.9218667 15.952,19.476 15.952,18.9301333 L15.952,5.03946667 C15.9530667,4.49173333 15.5082667,4.04693333 14.9605333,4.04693333 L14.9605333,4.04693333 Z M13.9688,17.9376 L2.0624,17.9376 L2.0624,6.0312 L13.9688,6.0312 L13.9688,17.9376 Z" ] []
                            , Svg.path [ Attributes.d "M18.9290667,0.0781333333 L6.0312,0.0781333333 C5.48426667,0.0781333333 5.03946667,0.524 5.03946667,1.06986667 C5.03946667,1.61653333 5.48533333,2.06133333 6.0312,2.06133333 L17.9376,2.06133333 L17.9376,13.9677333 C17.9376,14.5146667 18.3834667,14.9594667 18.9290667,14.9594667 C19.476,14.9594667 19.9208,14.5136 19.9208,13.9677333 L19.9208,1.07093333 C19.9218667,0.522933333 19.4770667,0.0781333333 18.9290667,0.0781333333 L18.9290667,0.0781333333 Z" ] []
                            , Svg.path [ Attributes.d "M5.03946667,12.9770667 L7.024,12.9770667 L7.024,14.9605333 C7.024,15.5072 7.46986667,15.952 8.01573333,15.952 C8.5624,15.952 9.0072,15.5061333 9.0072,14.9605333 L9.0072,12.976 L10.9917333,12.976 C11.5386667,12.976 11.9834667,12.5301333 11.9834667,11.9842667 C11.9834667,11.4376 11.5376,10.9928 10.9917333,10.9928 L9.0072,10.9928 L9.0072,9.00826667 C9.0072,8.46133333 8.56133333,8.01653333 8.01573333,8.01653333 C7.4688,8.01653333 7.024,8.4624 7.024,9.00826667 L7.024,10.9928 L5.03946667,10.9928 C4.4928,10.9928 4.048,11.4386667 4.048,11.9842667 C4.04693333,12.5312 4.49173333,12.9770667 5.03946667,12.9770667 L5.03946667,12.9770667 Z" ] []
                            ]
                        ]
                    ]
                ]
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
performance : Nri.Ui.Svg.V1.Svg
performance =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 30 30"
        ]
        [ Svg.polygon [ Attributes.points "22.1,24.6 22.1,8.4 17.8,7.1 17.8,24.6 " ] []
        , Svg.polygon [ Attributes.points "24.2,7.7 24.2,24.6 28.5,24.6 28.5,5 26.3,3.5 " ] []
        , Svg.polygon [ Attributes.points "5,15.6 5,24.6 9.3,24.6 9.3,12.3 5.8,16.5 " ] []
        , Svg.polygon [ Attributes.points "11.4,24.6 15.7,24.6 15.7,6.5 14.5,6.2 11.4,9.8 " ] []
        , Svg.path [ Attributes.fill "none", Attributes.d "M33.6,26.9H30v1.2c0,1.6-0.4,1.8-1.8,1.8H1.8C0.4,30,0,29.7,0,28.2V1.9c0-1.4,0.3-1.8,1.8-1.8H3v-5.5h30.6V26.9z" ] []
        , Svg.path [ Attributes.d "M3.1,26.9V3.2V0.1H1.8C0.3,0.1,0,0.5,0,1.9v26.2C0,29.7,0.4,30,1.8,30h26.3c1.5,0,1.8-0.3,1.8-1.8V27h-3.1H3.1V26.9z" ] []
        , Svg.path [ Attributes.fill "none", Attributes.d "M-715-401V715H309V-401H-715z" ] []
        , Svg.path [ Attributes.fill "none", Attributes.d "M-737.2-385.9v1116h1024v-1116L-737.2-385.9L-737.2-385.9z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
openClose : Nri.Ui.Svg.V1.Svg
openClose =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 14 12"
        ]
        [ Svg.path [ Attributes.d "M8.3,10.6c0,0.2-0.1,0.9,0.3,0.9h2.9c1.4,0,2.6-1.2,2.6-2.6V2.6C14,1.2,12.8,0,11.4,0 H8.6C8.4,0,8.3,0.1,8.3,0.3c0,0.3-0.1,0.9,0.3,0.9h2.9c0.8,0,1.4,0.6,1.4,1.4v6.3c0,0.8-0.6,1.4-1.4,1.4H8.9 C8.6,10.3,8.3,10.2,8.3,10.6z M0,5.7C0,5.9,0.1,6,0.2,6.1L5,11c0.1,0.1,0.2,0.2,0.4,0.2c0.3,0,0.6-0.3,0.6-0.6V8h4 c0.3,0,0.6-0.3,0.6-0.6V4c0-0.3-0.3-0.6-0.6-0.6H6V0.9c0-0.3-0.3-0.6-0.6-0.6C5.3,0.3,5.1,0.3,5,0.5L0.2,5.3C0.1,5.4,0,5.6,0,5.7z" ] [] ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
download : Nri.Ui.Svg.V1.Svg
download =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 21 21"
        ]
        [ Svg.path
            [ Attributes.fillRule "evenodd"
            , Attributes.d "M17.719 12.467H21v5.25a1.968 1.968 0 0 1-1.969 1.97H1.97A1.968 1.968 0 0 1 0 17.716v-5.25h3.281v3.938H17.72v-3.938zM5.647 9.17h.001a1.024 1.024 0 0 1-.082-.332.967.967 0 0 1 .046-.352A1.037 1.037 0 0 1 6 7.962c.08-.057.166-.104.257-.14a1.642 1.642 0 0 1 .597-.115h1.462l-.167-5.163a1.148 1.148 0 0 1 .347-.865 1.307 1.307 0 0 1 .906-.365h2.18c.172 0 .343.034.503.1.15.06.287.151.404.265a1.148 1.148 0 0 1 .347.865l-.168 5.165h1.529c.12 0 .24.015.354.043.114.027.225.07.328.127a1.058 1.058 0 0 1 .45.453.985.985 0 0 1 .076.69 1.065 1.065 0 0 1-.06.166 1.01 1.01 0 0 1-.2.302l-3.676 4.064a1.05 1.05 0 0 1-.194.17 1.432 1.432 0 0 1-1.326.126 1.29 1.29 0 0 1-.236-.126 1.073 1.073 0 0 1-.197-.17L5.845 9.5a1.183 1.183 0 0 1-.207-.318l.009-.013z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
edit : Nri.Ui.Svg.V1.Svg
edit =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 30 30"
        ]
        [ Svg.path [ Attributes.d "M27.3,7.9l-5.2-5.2l2.3-2.3c0.5-0.5,1.2-0.5,1.7,0L29.7,4c0.5,0.5,0.5,1.2,0,1.7L27.3,7.9z M25.9,9.4L8.6,26.6l-5.2-5.2L20.6,4.1L25.9,9.4z M0,30l1.9-7L7,28.1L0,30z" ] []
        , Svg.path [ Attributes.fill "none", Attributes.d "M-753.8-401V715h1024V-401H-753.8z" ] []
        , Svg.path [ Attributes.fill "none", Attributes.d "M-775.9-385.9v1116h1024v-1116L-775.9-385.9L-775.9-385.9z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
gear : Nri.Ui.Svg.V1.Svg
gear =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path
            [ Attributes.fillRule "evenodd"
            , Attributes.d "M3.282 14.744A9.583 9.583 0 0 0 4.52 17.62l-1.557 1.565c-.7.699-.693 1.115-.077 1.73l1.519 1.52c.62.623 1.045.61 1.73-.077l1.635-1.641c.77.443 1.603.782 2.487 1v2c0 .993.3 1.282 1.167 1.282h2.154c.878 0 1.167-.309 1.167-1.282v-2a9.582 9.582 0 0 0 2.487-1l1.672 1.68c.693.686 1.109.699 1.73.083l1.526-1.526c.607-.608.62-1.025-.084-1.73l-1.602-1.602a9.417 9.417 0 0 0 1.243-2.878h2.116c.88-.001 1.168-.31 1.168-1.283v-1.924c0-.95-.25-1.282-1.167-1.282h-2.115a9.582 9.582 0 0 0-1-2.487l1.526-1.519c.673-.673.731-1.09.083-1.731l-1.525-1.526c-.61-.61-1.046-.602-1.731.083L17.62 4.52a9.583 9.583 0 0 0-2.877-1.237v-2c0-.95-.25-1.282-1.167-1.282h-2.154c-.866 0-1.167.314-1.167 1.282v2A9.583 9.583 0 0 0 7.38 4.52l-1.45-1.443c-.685-.685-1.121-.692-1.73-.083L2.672 4.52c-.648.64-.59 1.058.083 1.731l1.52 1.52a9.765 9.765 0 0 0-.994 2.486H1.167C.3 10.256 0 10.57 0 11.538v1.924c0 .993.3 1.282 1.167 1.282h2.115zm5.55-2.244a3.666 3.666 0 0 1 7.334 0 3.667 3.667 0 1 1-7.334 0z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
sort : Nri.Ui.Svg.V1.Svg
sort =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 21 21"
        ]
        [ Svg.path
            [ Attributes.fillRule "evenodd"
            , Attributes.d "M0 5.048h21V2H0v3.048zm0 7.4h14.438V9.402H0v3.048zm0 7.402h7v-3.048H0v3.048z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
calendar : Nri.Ui.Svg.V1.Svg
calendar =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 21 21"
        ]
        [ Svg.path [ Attributes.fillRule "evenodd", Attributes.d "M19.483 5.097v13.709c-.151 1.053-.848 1.909-1.756 2.194H2.7C1.67 20.677.913 19.621.913 18.376V5.526c0-1.5 1.101-2.725 2.449-2.725h2.515V.725c0-.4.293-.725.652-.725.36 0 .652.326.652.725v2.076h6.065V.725c0-.4.293-.725.652-.725.359 0 .651.326.651.725v2.076h2.516c1.216 0 2.232.998 2.418 2.296zM3.362 4.25h2.515v1c0 .4.293.725.652.725.36 0 .652-.325.652-.725v-1h6.043v1c0 .4.292.725.652.725.359 0 .651-.325.651-.725v-1h2.516c.629 0 1.145.576 1.145 1.275v2.424H2.217V5.525c0-.7.515-1.275 1.145-1.275zm13.703 15.401H3.362c-.63 0-1.145-.575-1.145-1.275v-8.95H18.21v8.95c0 .7-.516 1.275-1.145 1.275z" ] []
        , Svg.path [ Attributes.fillRule "nonzero", Attributes.d "M3.652 10.957h1.826v1.826H3.652z" ] []
        , Svg.path [ Attributes.fillRule "nonzero", Attributes.d "M3.652 13.696h1.826v1.826H3.652zM6.391 10.957h1.826v1.826H6.391zM6.391 13.696h1.826v1.826H6.391zM9.13 10.957h1.826v1.826H9.13zM9.13 13.696h1.826v1.826H9.13zM11.87 10.957h1.826v1.826H11.87zM11.87 13.696h1.826v1.826H11.87zM14.609 10.957h1.826v1.826h-1.826zM14.609 13.696h1.826v1.826h-1.826zM3.652 16.435h1.826v1.826H3.652zM6.391 16.435h1.826v1.826H6.391zM9.13 16.435h1.826v1.826H9.13zM11.87 16.435h1.826v1.826H11.87zM14.609 16.435h1.826v1.826h-1.826z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
document : Nri.Ui.Svg.V1.Svg
document =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 21 21"
        ]
        [ Svg.path [ Attributes.d "M13.41.219H4.742a2.703 2.703 0 0 0-2.699 2.699V18.08c0 1.487 1.211 2.699 2.7 2.699h11.051c1.488 0 2.7-1.212 2.7-2.7V5.899L13.41.218zm.356 2.327l2.644 2.956h-2.644V2.546zm2.026 16.949H4.742A1.414 1.414 0 0 1 3.33 18.08V2.918c0-.779.634-1.414 1.412-1.414h7.739v5.282h4.725V18.08c0 .78-.634 1.414-1.414 1.414z" ] []
        , Svg.path [ Attributes.d "M6.355 10.072V8.785h7.824v1.287H6.355zm0 2.964V11.75h7.824v1.286H6.355zm0 2.965v-1.287h7.824v1.287H6.355z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
leaderboard : Nri.Ui.Svg.V1.Svg
leaderboard =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 20 15"
        ]
        [ Svg.g
            [ Attributes.stroke "none"
            , Attributes.strokeWidth "1"
            , Attributes.fill "none"
            , Attributes.fillRule "evenodd"
            ]
            [ Svg.g
                [ Attributes.transform "translate(-248.000000, -856.000000)"
                , Attributes.fill "currentcolor"
                ]
                [ Svg.g [ Attributes.transform "translate(248.000000, 856.000000)" ]
                    [ Svg.g []
                        [ Svg.path [ Attributes.d "M12.03078,1.83673 C12.02989,2.77336 11.17837,3.62577 10.24174,3.62577 C9.305327,3.62577 8.452916,2.77425 8.452916,1.83673 C8.452027,0.89921 9.305327,0.04591 10.24174,0.04591 C11.17925,0.04591 12.03078,0.89921 12.03078,1.83673" ] []
                        , Svg.path [ Attributes.d "M8.270612,4.33576 C7.379091,4.33576 6.659563,5.0544 6.659563,5.94681 C6.659563,6.04747 6.667341,6.14725 6.682896,6.24347 L8.006622,12.95254 C8.173282,13.663401 8.814813,14.174714 9.569006,14.174714 L10.9154,14.174714 C11.66959,14.174714 12.33468,13.627847 12.47778,12.95254 L13.79817,6.24347 C13.81551,6.14636 13.82506,6.04659 13.82506,5.94681 C13.82506,5.05529 13.09842,4.33576 12.2069,4.33576 L10.9014,4.33576 C10.90229,4.34265 10.90229,4.34954 10.9014,4.35665 L10.49875,6.3148 C10.79207,6.42857 11.01962,6.72545 11.01962,7.04388 C11.01962,7.45098 10.64896,7.82163 10.24187,7.82163 C9.834773,7.82163 9.464121,7.45098 9.464121,7.04388 C9.464121,6.72523 9.691445,6.42835 9.984989,6.3148 L9.582116,4.35665 C9.581227,4.34954 9.581227,4.34265 9.582116,4.33576 L8.270612,4.33576 Z M9.79833,4.33576 L10.19409,6.27324 C10.21054,6.27235 10.22609,6.26636 10.24276,6.26636 C10.2592,6.26636 10.27476,6.27235 10.2912,6.27324 L10.68718,4.33576 L9.79833,4.33576 Z" ] []
                        , Svg.path [ Attributes.d "M18.74145,6.12205 C18.74056,6.99268 17.94904,7.78421 17.0784,7.78421 C16.20777,7.78421 15.41513,6.99268 15.41513,6.12205 C15.41425,5.25053 16.20777,4.45811 17.0784,4.45811 C17.9497,4.45811 18.74234,5.25142 18.74145,6.12205" ] []
                        , Svg.path [ Attributes.d "M15.65304,8.446626 C14.82418,8.446626 14.15309,9.117711 14.15309,9.946568 C14.15309,10.040342 14.16176,10.132338 14.1782,10.221668 L14.74329,13.042892 C14.8804,13.704199 15.49326,14.174625 16.19479,14.174625 L17.9585,14.174625 C18.65981,14.174625 19.26045,13.704199 19.40978,13.042892 L19.97487,10.220779 C19.99131,10.131449 19.99998,10.038564 19.99998,9.945679 C19.99998,9.116822 19.32911,8.445737 18.50026,8.445737 L17.7154,8.445737 L17.33341,10.278999 C17.62696,10.392772 17.85428,10.68965 17.85428,11.008082 C17.85428,11.415177 17.48363,11.785829 17.07654,11.785829 C16.66944,11.785829 16.29879,11.415177 16.29879,11.008082 C16.29879,10.68965 16.52634,10.392772 16.81966,10.278999 L16.43767,8.445737 L15.65304,8.446626 Z M16.65989,8.446626 L17.02787,10.237445 C17.04431,10.236556 17.05987,10.230334 17.07631,10.230334 C17.09276,10.230334 17.10853,10.236556 17.12498,10.237445 L17.49296,8.446626 L16.65989,8.446626 Z" ] []
                        , Svg.path [ Attributes.d "M1.369747,4.78259 C1.370636,5.65322 2.16216,6.44475 3.032793,6.44475 C3.903426,6.44475 4.696062,5.65322 4.696062,4.78259 C4.696951,3.91107 3.903426,3.11866 3.032793,3.11866 C2.161494,3.11866 1.368858,3.91196 1.369747,4.78259" ] []
                        , Svg.path [ Attributes.d "M1.499942,7.10726 C0.671085,7.10726 0,7.77834 0,8.607197 C0,8.700972 0.00866633,8.792968 0.02511013,8.882298 L0.7013061,13.044358 C0.817746,13.664112 1.451277,14.176314 2.152805,14.176314 L3.916514,14.176314 C4.61782,14.176314 5.228019,13.705666 5.367791,13.044358 L6.043987,8.882298 C6.060431,8.792968 6.069097,8.700083 6.069097,8.607197 C6.069097,7.77834 5.398235,7.10726 4.569378,7.10726 L3.673413,7.10726 L3.29165,8.940518 C3.584972,9.054291 3.812296,9.351168 3.812296,9.669601 C3.812296,10.076696 3.441644,10.447348 3.034549,10.447348 C2.627453,10.447348 2.256801,10.076696 2.256801,9.669601 C2.256801,9.351168 2.484348,9.054291 2.77767,8.940518 L2.395685,7.10726 L1.499942,7.10726 Z M2.617898,7.10726 L2.985884,8.898075 C3.00255,8.897186 3.018105,8.890964 3.034549,8.890964 C3.050992,8.890964 3.06677,8.897186 3.083213,8.898075 L3.451199,7.10726 L2.617898,7.10726 Z" ] []
                        ]
                    ]
                ]
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
class : Nri.Ui.Svg.V1.Svg
class =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 21 21"
        ]
        [ Svg.path [ Attributes.d "M2.66 20.576v-7.1l.002-.063V10.878l-.847 1.65c-.25.487-.834.689-1.304.447-.47-.24-.648-.833-.398-1.32l1.66-3.236c.03-.056.062-.109.099-.156.149-.432.56-.744 1.044-.744h2.95l-1.487 2.896c-.485.949-.16 2.151.823 2.657a1.92 1.92 0 0 0 1.85-.053l.037-.024v7.581H5.153v-6.095H4.65v6.095H2.66zm5.32 0v-7.743l.001-.072V9.968l-.933 1.817c-.276.54-.92.76-1.439.495-.518-.266-.713-.92-.438-1.457l1.83-3.566c.032-.062.068-.119.109-.172.164-.477.618-.82 1.15-.82h4.385c.534 0 .987.343 1.15.82.04.053.077.11.11.172l1.829 3.566c.277.538.08 1.191-.438 1.457-.519.265-1.162.044-1.438-.495l-.933-1.816v2.751c0 .037-.001.071-.005.106v7.75h-2.207v-6.638h-.527v6.638H7.98zm5.831 0V12.99l.043.03a1.92 1.92 0 0 0 1.85.052c.984-.506 1.308-1.708.822-2.657L15.04 7.52h2.949c.484 0 .895.312 1.044.744.036.049.07.1.099.156l1.66 3.235c.25.488.072 1.08-.398 1.321-.47.242-1.054.04-1.305-.448l-.846-1.649v2.497c0 .032-.001.064-.004.097V20.577h-1.99V14.48h-.502v6.095H13.81zM10.491 1a2.182 2.182 0 0 0 .001 4.363A2.182 2.182 0 0 0 10.494 1h-.004zM2.961 4.722a1.978 1.978 0 1 1 3.957 0 1.978 1.978 0 0 1-3.957 0zm11.096 0a1.978 1.978 0 1 1 3.957 0 1.978 1.978 0 0 1-3.957 0z" ] [] ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
person : Nri.Ui.Svg.V1.Svg
person =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 18 18"
        ]
        [ Svg.path [ Attributes.d "M8.6,9.4c2.6,0,4.7-2.1,4.7-4.7c0-2.6-2.1-4.7-4.7-4.7C6,0,3.9,2.1,3.9,4.7C3.9,7.3,6,9.4,8.6,9.4L8.6,9.4z M0,17.6C0,17.8,0.2,18,0.4,18h16.4c0.2,0,0.4-0.2,0.4-0.4v-0.8c0-3.2-2.1-5.9-6.3-5.9H6.3C2.1,11,0,13.7,0,16.8V17.6z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
clock : Nri.Ui.Svg.V1.Svg
clock =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 15 15"
        ]
        [ Svg.path [ Attributes.d "M7.5,0C3.4,0,0,3.4,0,7.5S3.4,15,7.5,15S15,11.6,15,7.5S11.6,0,7.5,0L7.5,0z M7.5,13.5 c-3.3,0-6-2.7-6-6c0-3.3,2.7-6,6-6c3.3,0,6,2.7,6,6C13.5,10.8,10.8,13.5,7.5,13.5L7.5,13.5z" ] []
        , Svg.path [ Attributes.d "M7.4,9.3C7,9.3,6.6,8.9,6.6,8.4V4.4c0-0.5,0.3-0.9,0.8-0.9c0.4,0,0.7,0.4,0.7,0.8 c0,0,0,0,0,0V3.5c0,0,0,1,0,1v1.8c0,0.6,0,2.2,0,2.2C8.1,8.9,7.7,9.3,7.4,9.3z" ] []
        , Svg.path [ Attributes.d "M6.7,8.4C6.9,8,7.4,7.8,7.8,7.9l2.3,0.9c0.5,0.1,0.7,0.7,0.6,1c-0.1,0.3-0.6,0.6-1.1,0.5 L7.4,9.4C6.9,9.3,6.6,8.8,6.7,8.4z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
flipper : Nri.Ui.Svg.V1.Svg
flipper =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 21 18"
        ]
        [ Svg.path [ Attributes.fillRule "evenodd", Attributes.d "M6 12.59h8.59V4H6v8.59zm.955-.954h6.681V4.955H6.955v6.681zM6.682 16.204a.477.477 0 1 1 0 .955H5.25a3.345 3.345 0 0 1-3.341-3.34v-2.19L.815 12.724a.477.477 0 1 1-.675-.675l1.909-1.91a.477.477 0 0 1 .675 0l1.909 1.91a.477.477 0 1 1-.675.675l-1.094-1.095v2.19a2.388 2.388 0 0 0 2.386 2.385h1.432zM20.86 4.435a.477.477 0 0 0-.675 0L19.091 5.53V3.34A3.345 3.345 0 0 0 15.75 0h-1.432a.477.477 0 1 0 0 .955h1.432a2.388 2.388 0 0 1 2.386 2.386V5.53l-1.094-1.095a.477.477 0 1 0-.675.675l1.91 1.91a.475.475 0 0 0 .674 0l1.91-1.91a.477.477 0 0 0 0-.675" ] []
        , Svg.path [ Attributes.fillRule "evenodd", Attributes.d "M10 12h.716V4H10z" ] []
        , Svg.path [ Attributes.fillRule "evenodd", Attributes.d "M6.92 8.716h7.16V8H6.92z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
newspaper : Nri.Ui.Svg.V1.Svg
newspaper =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path [ Attributes.d "M20.9,0.5v21.6c0,1.3,1.1,2.4,2.4,2.4H2.4c-1.3,0-2.4-1.1-2.4-2.4V0.5H20.9z M17.6,3.9h-6.8v4.8h6.8V3.9z M8.1,3.9H3.4C3,3.9,2.7,4.2,2.7,4.6C2.7,5,3,5.3,3.4,5.3h4.7c0.4,0,0.7-0.3,0.7-0.7C8.8,4.2,8.5,3.9,8.1,3.9L8.1,3.9z M25,8.7v13.4 c0,1-0.7,1.7-1.7,1.7c-0.9,0-1.7-0.8-1.7-1.7V8.7H25z M8.1,7.4H3.4C3,7.4,2.7,7.7,2.7,8c0,0.4,0.3,0.7,0.7,0.7h4.7 c0.4,0,0.7-0.3,0.7-0.7C8.8,7.7,8.5,7.4,8.1,7.4L8.1,7.4z M17.6,11.5H3.4c-0.4,0-0.7,0.3-0.7,0.7c0,0.4,0.3,0.7,0.7,0.7h14.2 c0.4,0,0.7-0.3,0.7-0.7C18.2,11.8,17.9,11.5,17.6,11.5L17.6,11.5z M17.6,15.2H3.4c-0.4,0-0.7,0.3-0.7,0.7c0,0.4,0.3,0.7,0.7,0.7 h14.2c0.4,0,0.7-0.3,0.7-0.7C18.2,15.5,17.9,15.2,17.6,15.2L17.6,15.2z M17.6,19H3.4c-0.4,0-0.7,0.3-0.7,0.7c0,0.4,0.3,0.7,0.7,0.7 h14.2c0.4,0,0.7-0.3,0.7-0.7C18.2,19.3,17.9,19,17.6,19L17.6,19z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
pen : Nri.Ui.Svg.V1.Svg
pen =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 63 63"
        ]
        [ Svg.path [ Attributes.d "M39.8,0L31,13.8l17.6,17.6l13.8-8.8L39.8,0z M27.9,16.4l-17.1,7L0,59.6l17.5-17.5 c-0.7-1.8-0.3-3.9,1.1-5.3c2-2,5.1-2,7.1,0s2,5.1,0,7.1c-1.4,1.4-3.6,1.8-5.3,1.1L2.8,62.4l36.3-10.8l7-17.1L27.9,16.4z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
arrowTop : Nri.Ui.Svg.V1.Svg
arrowTop =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "-25 05 25 15"
        ]
        [ Svg.path
            [ Attributes.transform "rotate(90)"
            , Attributes.fillRule "evenodd"
            , Attributes.d "M19.2677026,20.7322696 C20.2443584,21.7070736 20.2443584,23.2915005 19.2677026,24.2677859 C18.7788191,24.7555583 18.139567,25 17.4999444,25 C16.8603219,25 16.2210698,24.7555583 15.7321863,24.2677859 L5.73229742,14.267897 C4.7556416,13.293093 4.7556416,11.7086662 5.73229742,10.7323808 L15.7321863,0.732491861 C16.7084718,-0.244163954 18.2914171,-0.244163954 19.2677026,0.732491861 C20.2443584,1.70729584 20.2443584,3.29172268 19.2677026,4.26800813 L11.0359422,12.5001389 L19.2677026,20.7322696 Z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
arrowRight : Nri.Ui.Svg.V1.Svg
arrowRight =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 5 25 15"
        ]
        [ Svg.path
            [ Attributes.transform "rotate(180) translate(-25, -25)"
            , Attributes.fillRule "evenodd"
            , Attributes.d "M19.2677026,20.7322696 C20.2443584,21.7070736 20.2443584,23.2915005 19.2677026,24.2677859 C18.7788191,24.7555583 18.139567,25 17.4999444,25 C16.8603219,25 16.2210698,24.7555583 15.7321863,24.2677859 L5.73229742,14.267897 C4.7556416,13.293093 4.7556416,11.7086662 5.73229742,10.7323808 L15.7321863,0.732491861 C16.7084718,-0.244163954 18.2914171,-0.244163954 19.2677026,0.732491861 C20.2443584,1.70729584 20.2443584,3.29172268 19.2677026,4.26800813 L11.0359422,12.5001389 L19.2677026,20.7322696 Z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
arrowDown : Nri.Ui.Svg.V1.Svg
arrowDown =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 15"
        ]
        [ Svg.path
            [ Attributes.transform "rotate(270) translate(-20)"
            , Attributes.fillRule "evenodd"
            , Attributes.d "M19.2677026,20.7322696 C20.2443584,21.7070736 20.2443584,23.2915005 19.2677026,24.2677859 C18.7788191,24.7555583 18.139567,25 17.4999444,25 C16.8603219,25 16.2210698,24.7555583 15.7321863,24.2677859 L5.73229742,14.267897 C4.7556416,13.293093 4.7556416,11.7086662 5.73229742,10.7323808 L15.7321863,0.732491861 C16.7084718,-0.244163954 18.2914171,-0.244163954 19.2677026,0.732491861 C20.2443584,1.70729584 20.2443584,3.29172268 19.2677026,4.26800813 L11.0359422,12.5001389 L19.2677026,20.7322696 Z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
arrowLeft : Nri.Ui.Svg.V1.Svg
arrowLeft =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 5 25 15"
        ]
        [ Svg.path
            [ Attributes.fillRule "evenodd"
            , Attributes.d "M19.2677026,20.7322696 C20.2443584,21.7070736 20.2443584,23.2915005 19.2677026,24.2677859 C18.7788191,24.7555583 18.139567,25 17.4999444,25 C16.8603219,25 16.2210698,24.7555583 15.7321863,24.2677859 L5.73229742,14.267897 C4.7556416,13.293093 4.7556416,11.7086662 5.73229742,10.7323808 L15.7321863,0.732491861 C16.7084718,-0.244163954 18.2914171,-0.244163954 19.2677026,0.732491861 C20.2443584,1.70729584 20.2443584,3.29172268 19.2677026,4.26800813 L11.0359422,12.5001389 L19.2677026,20.7322696 Z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
arrowPointingRight : Nri.Ui.Svg.V1.Svg
arrowPointingRight =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 20"
        ]
        [ Svg.path [ Attributes.d "M24.48 11.136l-8.093 8.092a1.784 1.784 0 0 1-2.522 0 1.781 1.781 0 0 1 0-2.52l5.05-5.05H1.782a1.782 1.782 0 1 1 0-3.565h17.133l-5.05-5.05A1.781 1.781 0 0 1 15.126 0c.457 0 .913.174 1.26.522l8.094 8.092a1.784 1.784 0 0 1 0 2.522z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
sortArrow : Nri.Ui.Svg.V1.Svg
sortArrow =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 8 6"
        ]
        [ Svg.polygon [ Attributes.points "0 6 4 0 8 6 0 6" ] [] ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
checkmark : Nri.Ui.Svg.V1.Svg
checkmark =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 21.7 17.1"
        ]
        [ Svg.path [ Attributes.d "M7.6,17.1c-0.5,0-1-0.2-1.4-0.6l-5.6-5.4c-0.8-0.8-0.8-2-0.1-2.8c0.8-0.8,2-0.8,2.8-0.1l4.1,4L18.2,0.7c0.8-0.8,2-0.9,2.8-0.1s0.9,2,0.1,2.8l-12,13C8.7,16.9,8.2,17.1,7.6,17.1C7.7,17.1,7.6,17.1,7.6,17.1" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
x : Nri.Ui.Svg.V1.Svg
x =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path [ Attributes.d "M1.067 6.015c-1.423-1.422-1.423-3.526 0-4.948 1.422-1.423 3.526-1.423 4.948 0l6.371 6.37 6.371-6.37c1.422-1.423 3.783-1.423 5.176 0 1.423 1.422 1.423 3.782 0 5.176l-6.37 6.37 6.37 6.372c1.423 1.422 1.423 3.526 0 4.948-1.422 1.423-3.526 1.423-4.948 0l-6.371-6.37-6.371 6.37c-1.422 1.423-3.783 1.423-5.176 0-1.423-1.422-1.423-3.782 0-5.176l6.37-6.143-6.37-6.599z" ] [] ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
exclamation : Nri.Ui.Svg.V1.Svg
exclamation =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 15 15"
        ]
        [ Svg.path [ Attributes.fillRule "evenodd", Attributes.d "M15,7.5 C15,3.35786438 11.6421356,0 7.5,0 C3.35786438,0 0,3.35786438 0,7.5 C0,11.6421357 3.35786438,15 7.5,15 C11.6421356,15 15,11.6421357 15,7.5 Z M7.488,3.00005693 C6.6910533,2.99332411 6.03236555,3.58464547 6,4.33587376 C6,4.65284725 6.66,8.34332427 6.66,8.34332427 C6.73077084,8.72726384 7.08695202,9.00567371 7.5,8.9999122 L7.536,8.9999122 C7.94904798,9.00567371 8.30522916,8.72726384 8.376,8.34332427 C8.44677084,7.9593847 9,4.65850749 9,4.33587376 C8.96812494,3.59558162 8.32732494,3.00848187 7.542,3.00005693 L7.488,3.00005693 Z M7.5,12 C8.05228477,12 8.5,11.5522847 8.5,11 C8.5,10.4477153 8.05228477,10 7.5,10 C6.94771523,10 6.5,10.4477153 6.5,11 C6.5,11.5522847 6.94771523,12 7.5,12 L7.5,12 Z" ] [] ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
attention : Nri.Ui.Svg.V1.Svg
attention =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 5.05 15.43"
        ]
        [ Svg.ellipse
            [ Attributes.cx "2.52"
            , Attributes.cy "13.71"
            , Attributes.rx "1.76"
            , Attributes.ry "1.71"
            ]
            []
        , Svg.path
            [ Attributes.d "M2.57,0H2.48A2.46,2.46,0,0,0,0,2.36c0,.56,1.1,7.08,1.1,7.08a1.4,1.4,0,0,0,1.4,1.16h.06a1.4,1.4,0,0,0,1.4-1.16S5,2.93,5,2.36A2.46,2.46,0,0,0,2.57,0Z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
flag : Nri.Ui.Svg.V1.Svg
flag =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "#F3336C"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path
            [ Attributes.fillRule "evenodd"
            , Attributes.d "M21.36 1.25C20.064.414 17.107-.368 13.036.324 9.688.894 6.155.308 5 .081a.965.965 0 0 0-1.36.895v23.051c0 .538.427.973.967.973.542 0 .98-.437.98-.973V12.933c1.242.414 3.589.931 6.564.35 4.043-.794 7.36.229 7.36.229 1.02-1.017 1.808-3.482 1.435-6.203-.407-2.958.414-6.06.414-6.06z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
star : Nri.Ui.Svg.V1.Svg
star =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 25 24"
        ]
        [ Svg.defs []
            [ Svg.path
                [ Attributes.id "stara"
                , Attributes.d "M13.396.554l3.121 6.259a1 1 0 0 0 .744.542l6.89 1.054a1 1 0 0 1 .554 1.698l-4.966 4.937a1 1 0 0 0-.282.87l1.132 6.924a1 1 0 0 1-1.448 1.049l-6.18-3.216a1 1 0 0 0-.923 0L5.86 23.887a1 1 0 0 1-1.448-1.049l1.132-6.924a1 1 0 0 0-.282-.87L.295 10.107A1 1 0 0 1 .849 8.41l6.89-1.054a1 1 0 0 0 .744-.542l3.123-6.26a1 1 0 0 1 1.79.001z"
                ]
                []
            , Svg.filter
                [ Attributes.id "starb"
                , Attributes.x "-8%"
                , Attributes.y "-8.3%"
                , Attributes.width "116%"
                , Attributes.height "116.7%"
                ]
                [ Svg.feGaussianBlur
                    [ Attributes.in_ "SourceAlpha"
                    , Attributes.result "shadowBlurInner1"
                    , Attributes.stdDeviation "1.5"
                    ]
                    []
                , Svg.feOffset
                    [ Attributes.dy "1"
                    , Attributes.in_ "shadowBlurInner1"
                    , Attributes.result "shadowOffsetInner1"
                    ]
                    []
                , Svg.feComposite
                    [ Attributes.in_ "shadowOffsetInner1"
                    , Attributes.in2 "SourceAlpha"
                    , Attributes.k2 "-1"
                    , Attributes.k3 "1"
                    , Attributes.operator "arithmetic"
                    , Attributes.result "shadowInnerInner1"
                    ]
                    []
                , Svg.feColorMatrix
                    [ Attributes.in_ "shadowInnerInner1"
                    , Attributes.values
                        """
                        0 0 0 0 1
                        0 0 0 0 0.3
                        0 0 0 0 0
                        0 0 0 1 0
                        """
                    ]
                    []
                ]
            ]
        , Svg.g [ Attributes.fillRule "evenodd" ]
            [ Svg.use
                [ Attributes.fill "#FEC709"
                , Attributes.xlinkHref "#stara"
                ]
                []
            , Svg.use
                [ Attributes.fill "#000"
                , Attributes.filter "url(#starb)"
                , Attributes.xlinkHref "#stara"
                ]
                []
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
starOutline : Nri.Ui.Svg.V1.Svg
starOutline =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 25 24"
        ]
        [ Svg.path
            [ Attributes.fill "none"
            , Attributes.fillRule "evenodd"
            , Attributes.stroke "currentcolor"
            , Attributes.strokeWidth "2"
            , Attributes.d "M12.501 1L9.378 7.26A2 2 0 0 1 7.89 8.344L1 9.398l4.966 4.936a2 2 0 0 1 .564 1.742L5.397 23l6.18-3.216a2 2 0 0 1 1.846 0L19.603 23l-1.133-6.924a2 2 0 0 1 .564-1.742L24 9.398l-6.89-1.054a2 2 0 0 1-1.488-1.085L12.502 1z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
compass : Nri.Ui.Svg.V1.Svg
compass =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 27 27"
        ]
        [ Svg.g [ Attributes.stroke "none", Attributes.strokeWidth "1", Attributes.fillRule "evenodd", Attributes.transform "translate(-356.000000, -518.000000)" ]
            [ Svg.g [ Attributes.transform "translate(356.000000, 518.000000)" ]
                [ Svg.path [ Attributes.d "M13.3903844,0.104572526 C6.06095558,0.104572526 0.106272892,6.05925521 0.106272892,13.388684 C0.106272892,20.7181128 6.06095558,26.6727955 13.3903844,26.6727955 C20.7198132,26.6727955 26.6744959,20.7181128 26.6744959,13.388684 C26.6744959,6.05925521 20.7198132,0.104572526 13.3903844,0.104572526 Z M13.3903844,1.43298368 C20.0009834,1.43298368 25.3460847,6.77808505 25.3460847,13.388684 C25.3460847,19.999283 20.0009834,25.3443844 13.3903844,25.3443844 C6.77978542,25.3443844 1.43468404,19.999283 1.43468404,13.388684 C1.43468404,6.77808505 6.77978542,1.43298368 13.3903844,1.43298368 Z" ] []
                , Svg.path [ Attributes.d "M14.7187955,13.3903844 C14.7187955,13.7423602 14.5793655,14.0794578 14.3302618,14.3285615 C14.0811582,14.5776651 13.7423602,14.7187955 13.3903844,14.7187955 C12.6562513,14.7187955 12.0619732,14.1245175 12.0619732,13.3903844 C12.0619732,12.6562513 12.6562513,12.0619732 13.3903844,12.0619732 C13.7423602,12.0619732 14.0811582,12.2014033 14.3302618,12.4505069 C14.5793655,12.6996106 14.7187955,13.0384086 14.7187955,13.3903844 Z" ] []
                , Svg.path [ Attributes.d "M6.7151715,7.41402204 C6.48094605,7.4259246 6.27180099,7.55855317 6.16212737,7.76642295 C6.05245375,7.97216727 6.05925521,8.21957056 6.18040631,8.42063887 L10.6953039,15.8610166 C10.7735207,15.9906695 10.8946718,16.090566 11.0375026,16.1420021 L19.8067165,19.3284885 C20.0706984,19.4228588 20.366137,19.3433667 20.5455257,19.1257198 C20.7232139,18.9097733 20.746594,18.6045576 20.6037632,18.3618303 L16.1849364,10.9694879 L16.1849364,10.9711883 C16.1071446,10.839835 15.9855684,10.7403636 15.8431627,10.6872271 L6.977453,7.45228028 L6.97575263,7.45228028 C6.89285978,7.42252387 6.80316545,7.40934603 6.7151715,7.41402204 Z M8.29778741,9.35031413 L15.1655668,11.8562289 L18.504661,17.4419321 L11.7099974,14.9712999 L8.29778741,9.34861376 L8.29778741,9.35031413 Z" ] []
                , Svg.polygon [ Attributes.points "12.7263914 5.41821713 14.0548025 5.41821713 14.0548025 2.76139483 12.7263914 2.76139483" ] []
                , Svg.polygon [ Attributes.points "21.3608513 14.0531021 24.0176736 14.0531021 24.0176736 12.724691 21.3608513 12.724691" ] []
                , Svg.polygon [ Attributes.points "12.7263914 24.0159732 14.0548025 24.0159732 14.0548025 21.3591509 12.7263914 21.3591509" ] []
                , Svg.polygon [ Attributes.points "2.76309519 14.0531021 5.41991749 14.0531021 5.41991749 12.724691 2.76309519 12.724691" ] []
                ]
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
activity : Nri.Ui.Svg.V1.Svg
activity =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 20 20"
        ]
        [ Svg.path
            [ Attributes.fillRule "evenodd"
            , Attributes.d "M20 10v.357h-3.642L15 5.607c-.071-.142-.179-.25-.357-.25-.142 0-.286.108-.357.25l-2.143 6.5-1.786-5.108c-.07-.106-.215-.213-.357-.213a.342.342 0 0 0-.32.25l-1.5 4.5L6.786 8.43c-.07-.107-.178-.215-.286-.215a.374.374 0 0 0-.32.179L4.642 10.75l-.785-1.287c-.072-.107-.143-.142-.25-.178a.407.407 0 0 0-.286.107l-.964.964H0V10C0 4.464 4.464 0 10 0s10 4.464 10 10m-4.286.822L14.606 6.93l-2.142 6.392a.342.342 0 0 1-.321.25.342.342 0 0 1-.32-.25l-1.787-5.108-1.465 4.357a.344.344 0 0 1-.32.25.392.392 0 0 1-.357-.215l-1.5-3.322-1.429 2.286a.382.382 0 0 1-.322.216c-.108 0-.25-.071-.286-.179l-.822-1.392-.75.75c-.106.07-.177.106-.285.106H.071A9.961 9.961 0 0 0 10 20a9.961 9.961 0 0 0 9.929-8.929H16.07c-.142 0-.286-.107-.357-.25"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
footsteps : Nri.Ui.Svg.V1.Svg
footsteps =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 15 20"
        ]
        [ Svg.path
            [ Attributes.fillRule "nonzero"
            , Attributes.d "M1.77335904,11.7922305 L5.90660307,11.0289328 C5.68935769,12.5383477 7.40861515,15.2884313 5.45646759,16.0478489 C2.76105632,17.0954131 1.9234042,14.6781572 1.77335904,11.7922305 Z M0.176718476,7.06612115 C0.458843391,8.43725287 1.41615152,9.74198306 1.69435526,11.1030145 L6.15429763,10.2795555 C7.60395395,3.97240957 6.1871195,0.900338486 4.18808583,0.126920592 C2.03987926,-0.705098659 -0.729754357,2.66141923 0.176718476,7.06612115 Z M13.2274465,15.4953161 L9.09420249,14.7320184 C9.31066764,16.2422134 7.59141017,18.992317 9.54433797,19.7509345 C12.2397492,20.7984988 13.0774014,18.3812428 13.2274465,15.4953161 Z M13.3056301,14.8061401 C13.5838338,13.4443886 14.5411619,12.1404785 14.8232668,10.7692468 C15.7297797,6.36454491 12.9602061,2.99806702 10.8110592,3.83008627 C8.81279779,4.60354417 7.39603137,7.67557525 8.84562767,13.9827211 L13.3056301,14.8061401 Z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
speedometer : Nri.Ui.Svg.V1.Svg
speedometer =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.g [ Attributes.fillRule "evenodd" ]
            [ Svg.path [ Attributes.d "M10.968 9.383a9.071 9.071 0 0 0-4.242 1.047l-1.7-1.7a12.494 12.494 0 0 1 6.852-2.45v3.148c-.3-.03-.603-.045-.91-.045zM20.94 9.524l-3.05 3.048a9.07 9.07 0 0 1 2.144 5.042H25a12.527 12.527 0 0 0-4.06-8.09zM0 17.614h1.902a9.101 9.101 0 0 1 3.738-6.51l-1.58-1.58A12.53 12.53 0 0 0 0 17.614z" ] []
            , Svg.path [ Attributes.d "M19.951 8.752l-8.388 9.433a1.539 1.539 0 0 1-.18.19 1.492 1.492 0 0 1-2.11-2.104 1.54 1.54 0 0 1 .192-.183l6.122-5.446a9.03 9.03 0 0 0-2.465-1.002V6.28c2.015.098 3.903.671 5.558 1.609l2.596-2.309a.56.56 0 0 1 .791.791L19.971 8.73h.002l-.022.023z" ] []
            , Svg.path [ Attributes.d "M10.932 16.718a.763.763 0 0 0-1.077 1.077.763.763 0 0 0 1.077-1.077z" ] []
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
skip : Nri.Ui.Svg.V1.Svg
skip =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path [ Attributes.d "M24.8 23.437c0 .416-.16.811-.447 1.104-.286.293-.676.46-1.08.46h-.882c-.845 0-1.53-.7-1.53-1.564v-8.874L4.406 24.58l-.23.14h-.105a2.158 2.158 0 0 1-.917.203c-1.134.035-2.088-.859-2.154-2.016V2.063C1.04.89 2.003-.034 3.154.001c.341.006.676.09.977.252h.106l.138.079L20.86 10.407V1.566C20.86.7 21.545 0 22.39 0h.882c.404 0 .794.167 1.08.46.287.293.447.689.447 1.105l.001 21.87z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
equals : Nri.Ui.Svg.V1.Svg
equals =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 25 15"
        ]
        [ Svg.g
            [ Attributes.transform "translate(-191.000000, -1433.000000)"
            , Attributes.fill "currentcolor"
            ]
            [ Svg.g [ Attributes.transform "translate(191.000000, 1433.000000)" ]
                [ Svg.rect
                    [ Attributes.x "0"
                    , Attributes.y "0"
                    , Attributes.width "25"
                    , Attributes.height "5"
                    , Attributes.rx "2.5"
                    ]
                    []
                , Svg.rect
                    [ Attributes.x "0"
                    , Attributes.y "10"
                    , Attributes.width "25"
                    , Attributes.height "5"
                    , Attributes.rx "2.5"
                    ]
                    []
                ]
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
plus : Nri.Ui.Svg.V1.Svg
plus =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path [ Attributes.d "M9.84 2.87c0-1.528 1.132-2.659 2.66-2.659 1.528 0 2.66 1.131 2.66 2.66v6.847h6.847c1.528 0 2.797 1.269 2.782 2.782 0 1.528-1.269 2.797-2.782 2.782h-6.848v6.847c0 1.529-1.13 2.66-2.659 2.66-1.528 0-2.66-1.131-2.66-2.66v-6.847H2.994c-1.528 0-2.797-1.269-2.782-2.782 0-1.528 1.269-2.797 2.782-2.782l6.725.123.123-6.97z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
bulb : Nri.Ui.Svg.V1.Svg
bulb =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 23 25"
        ]
        [ Svg.path
            [ Attributes.d "M21.6 12.5H19c-.3 0-.6.3-.6.6s.3.6.6.6h2.6c.3 0 .6-.3.6-.6s-.3-.6-.6-.6zM18.1 9.3c.1 0 .2 0 .3-.1l2.3-1.4c.2-.1.3-.5.1-.8-.2-.3-.5-.4-.8-.2l-2.3 1.4c-.2.1-.3.4-.3.7.2.2.4.4.7.4zM17.1 2c-.3-.2-.6-.1-.8.2l-1.5 2.2c-.1.1-.1.3-.1.5s.1.3.2.4c.1.1.3.1.4.1.2 0 .3-.1.4-.3l1.5-2.2c.2-.3.2-.7-.1-.9zM6.7 5.4c.2 0 .4-.1.5-.3.1-.2.1-.4 0-.6L5.7 2.2c-.1-.1-.3-.2-.4-.3-.2 0-.3 0-.4.1-.2.1-.3.3-.3.4 0 .2 0 .3.1.4L6.2 5c.1.3.3.4.5.4zM4 8.2L1.7 6.8c-.2-.1-.6 0-.7.2-.2.3-.1.6.2.8l2.3 1.4c.1.1.3.1.4.1l.3-.3c.1-.1.1-.3.1-.5-.1-.1-.2-.3-.3-.3zM20.6 17.8l-2.2-1.4c-.3-.2-.6-.1-.8.2-.2.3-.1.6.2.8l2.3 1.4c.3.1.6 0 .7-.2.2-.3.1-.6-.2-.8zM3.5 16.4l-2.3 1.4c-.1 0-.2.2-.3.3 0 .2 0 .3.1.5.1.1.2.2.4.3.1 0 .3 0 .4-.1L4 17.4c.3-.2.3-.5.2-.8-.1-.2-.5-.3-.7-.2zM3.7 13.1c0-.3-.3-.6-.6-.6H.6c-.3 0-.6.3-.6.6s.3.6.6.6h2.6c.1 0 .3-.1.4-.2.1-.1.1-.3.1-.4zM10.7 3.9c.3 0 .6-.3.6-.6V.6c0-.3-.3-.6-.6-.6s-.6.3-.6.6v2.7c0 .2.1.3.2.4s.3.2.4.2zM13.4 20.2H8.9c-.3 0-.6.3-.6.6s.3.6.6.6h4.5c.3 0 .6-.3.6-.6s-.3-.6-.6-.6zM10 23.5v.3c0 .4.3.7.6.7h.9c.4 0 .6-.3.6-.7v-.3c.7 0 1.3-.7 1.3-1.4H8.8c.1.7.6 1.3 1.2 1.4zM11.2 6.7c-3.1 0-5.6 2.7-5.6 6 0 .8.1 1.5.4 2.3 0 .1.1.2.1.3.2.6.6 1.1 1 1.6l1.4 2.3h5.4l1.4-2.3c.4-.5.7-1 1-1.6 0-.1.1-.2.1-.3.3-.7.4-1.5.4-2.3 0-3.3-2.5-6-5.6-6zM10.9 9c-.6 0-1.2.2-1.7.5-1.1.7-1.6 1.9-1.7 3.5 0 .3-.3.6-.6.6-.1 0-.3-.1-.4-.2-.1-.1-.2-.3-.2-.4 0-2.7 1.3-4 2.3-4.6.7-.4 1.4-.6 2.2-.7.3 0 .6.3.6.6.1.4-.2.7-.5.7z"
            , Attributes.transform "translate(.208 .052)"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
help : Nri.Ui.Svg.V1.Svg
help =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path [ Attributes.d "M12.5,25 C5.59644063,25 0,19.4035594 0,12.5 C0,5.59644063 5.59644063,0 12.5,0 C19.4035594,0 25,5.59644063 25,12.5 C25,19.4035594 19.4035594,25 12.5,25 Z M12.5,23 C18.2989899,23 23,18.2989899 23,12.5 C23,6.70101013 18.2989899,2 12.5,2 C6.70101013,2 2,6.70101013 2,12.5 C2,18.2989899 6.70101013,23 12.5,23 Z" ] []
        , Svg.path [ Attributes.d "M12.6825,6.6275 C13.3866702,6.6275 14.0095806,6.74395717 14.55125,6.976875 C15.0929194,7.20979283 15.5154151,7.53749789 15.81875,7.96 C16.1220848,8.38250211 16.27375,8.86458063 16.27375,9.40625 C16.27375,9.98041954 16.1329181,10.470623 15.85125,10.876875 C15.5695819,11.283127 15.1579194,11.7408308 14.61625,12.25 C14.1937479,12.6508353 13.8768761,12.9866653 13.665625,13.2575 C13.4543739,13.5283347 13.3216669,13.8262484 13.2675,14.15125 L13.18625,14.6875 L11.74,14.6875 L11.74,13.875 C11.74,13.3116639 11.8402073,12.8458352 12.040625,12.4775 C12.2410427,12.1091648 12.536248,11.6975023 12.92625,11.2425 C13.2079181,10.9174984 13.419166,10.6385428 13.56,10.405625 C13.700834,10.1727072 13.77125,9.91541808 13.77125,9.63375 C13.77125,9.30874838 13.6602094,9.0595842 13.438125,8.88625 C13.2160406,8.7129158 12.8991687,8.62625 12.4875,8.62625 C11.7074961,8.62625 10.9437537,8.85916434 10.19625,9.325 L10.19625,7.29375 C10.9112536,6.84958111 11.7399953,6.6275 12.6825,6.6275 Z M11.17125,18.34375 L11.17125,15.7275 L13.82,15.7275 L13.82,18.34375 L11.17125,18.34375 Z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
key : Nri.Ui.Svg.V1.Svg
key =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 64 71"
        ]
        [ Svg.path
            [ Attributes.d "M61.3 2.8c2.9 2.9 3.4 7.3 1.7 10.7 1.4 2.6 1.5 5.7.1 8.3-2.2 4.4-7.6 6.2-12 4-1.8-.9-3.2-2.5-4.1-4.2L45.6 23l.4 2c.4 1.8-1.1 3.6-2.9 3.6h-2.9c.5 1.1.3 2.6-.6 3.4s-2.3 1.1-3.4.5L14.9 53.9l.7.7c1.2-1.2 2.3-2.4 3.5-3.5 2.4 2.5 5 5.1 7.1 7.2l-3.5 3.5c-.7-.7-1.4-1.4-2.1-2.2l-.7.7c.7.7 1.4 1.4 2.1 2.2-1.4 1.5-3 3-4.2 4.3-.7-.7-1.4-1.4-2.1-2.2l-.7.7c.7.7 1.4 1.4 2.1 2.2L13.6 71c-2.4-2.5-5-5.1-7.1-7.2 1.2-1.2 2.3-2.4 3.5-3.5l-.7-.7-4.2 4.2C4 64.9 2 64.9.8 63.8c-1.1-1.1-1.1-3.2 0-4.3l31-31.3c-.6-1.1-.3-2.6.5-3.4.9-.9 2.3-1.2 3.4-.6v-2.9c0-1.8 1.8-3.3 3.6-2.9l1.9.4 1.3-1.3c-1.6-.9-3-2.2-3.9-3.9-2.2-4.5-.4-9.9 3.9-12.2 2.5-1.3 5.5-1.3 8 0 3.5-2.3 8-1.5 10.8 1.4zM57.1 7c-1.2-1.2-3-1.2-4.2 0-.5.5-1.1.8-1.8.8-.9.1-1.8-.2-2.4-.8-.9-.8-2.2-1-3.3-.5-1.5.8-2.1 2.5-1.3 4.1.8 1.5 2.5 2.1 4 1.4 1.1-.7 2.7-.5 3.7.5 1 .9 1.3 2.6.6 3.8-.8 1.5-.2 3.3 1.3 4.1s3.3.2 4-1.3c.5-1.1.3-2.3-.4-3.2-.9-1-1.1-1.9-1-3 .1-.7.5-1.1.9-1.6 1.1-1.3 1-3-.1-4.3z"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
lock : Nri.Ui.Svg.V1.Svg
lock =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 18 24"
        ]
        [ Svg.path
            [ Attributes.d "M15.17 10.292V6.147C15.17 2.757 12.402 0 9 0 5.597 0 2.83 2.758 2.83 6.147v4.145h-.882A1.944 1.944 0 0 0 0 12.232v9.828C0 23.132.872 24 1.948 24h14.105A1.943 1.943 0 0 0 18 22.06v-9.828c0-1.072-.872-1.94-1.947-1.94h-.883zm-5.574 7.463v2.305a.595.595 0 0 1-1.192 0v-2.305a1.744 1.744 0 0 1-1.156-1.639A1.75 1.75 0 0 1 9 14.371a1.75 1.75 0 0 1 1.752 1.745c0 .756-.483 1.397-1.156 1.64zm3.238-7.463H5.166V6.147c0-2.106 1.72-3.82 3.834-3.82s3.834 1.714 3.834 3.82v4.145z"
            , Attributes.fillRule "evenodd"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
premiumLock : Nri.Ui.Svg.V1.Svg
premiumLock =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 19 26"
        ]
        [ Svg.g [ Attributes.transform "translate(0.880000, 0.257143)" ]
            [ Svg.path
                [ Attributes.d "M15.1703507,11.7613357 L15.1703507,7.54281617 C15.1703507,4.09252936 12.4022155,1.28571429 9.00015151,1.28571429 C5.59748152,1.28571429 2.82964933,4.09252936 2.82964933,7.54281617 L2.82964933,11.7613357 L1.947846,11.7613357 C0.872409555,11.7613357 0,12.6451106 0,13.7356938 L0,23.7399276 C0,24.8305108 0.872409555,25.7142857 1.947846,25.7142857 L16.0527601,25.7142857 C17.1281965,25.7142857 18,24.8305108 18,23.7399276 L18,13.7360011 C18,12.6454179 17.1281965,11.7613357 16.0527601,11.7613357 L15.1703507,11.7613357 Z M9.59559603,19.3582355 L9.59559603,21.7044182 C9.59559603,22.0384458 9.32863083,22.3088637 9.00015151,22.3088637 C8.67106614,22.3088637 8.40410094,22.0384458 8.40410094,21.7044182 L8.40410094,19.3582355 C7.73047592,19.1108645 7.24836282,18.4584813 7.24836282,17.689634 C7.24836282,16.7090617 8.03259204,15.9131726 9.00015151,15.9131726 C9.96680191,15.9131726 10.7522432,16.7090617 10.7522432,17.689634 C10.7522432,18.4594032 10.2692211,19.1117864 9.59559603,19.3582355 L9.59559603,19.3582355 Z M12.8337233,11.7613357 L5.16627666,11.7613357 L5.16627666,7.54281617 C5.16627666,5.39913958 6.88624771,3.654944 9.00015151,3.654944 C11.1137523,3.654944 12.8337233,5.39913958 12.8337233,7.54281617 L12.8337233,11.7613357 L12.8337233,11.7613357 Z"
                , Attributes.fill "#E68900"
                ]
                []
            , Svg.rect
                [ Attributes.fill "#FFFFFF"
                , Attributes.x "1.28571429"
                , Attributes.y "14.1428571"
                , Attributes.width "14.1428571"
                , Attributes.height "7.71428571"
                ]
                []
            , Svg.path
                [ Attributes.d "M15.1703507,10.4756214 L15.1703507,6.25710188 C15.1703507,2.80681508 12.4022155,0 9.00015151,0 C5.59748152,0 2.82964933,2.80681508 2.82964933,6.25710188 L2.82964933,10.4756214 L1.947846,10.4756214 C0.872409555,10.4756214 0,11.3593963 0,12.4499795 L0,22.4542133 C0,23.5447965 0.872409555,24.4285714 1.947846,24.4285714 L16.0527601,24.4285714 C17.1281965,24.4285714 18,23.5447965 18,22.4542133 L18,12.4502868 C18,11.3597036 17.1281965,10.4756214 16.0527601,10.4756214 L15.1703507,10.4756214 Z M9.59559603,18.0725212 L9.59559603,20.4187039 C9.59559603,20.7527315 9.32863083,21.0231494 9.00015151,21.0231494 C8.67106614,21.0231494 8.40410094,20.7527315 8.40410094,20.4187039 L8.40410094,18.0725212 C7.73047592,17.8251502 7.24836282,17.172767 7.24836282,16.4039197 C7.24836282,15.4233474 8.03259204,14.6274583 9.00015151,14.6274583 C9.96680191,14.6274583 10.7522432,15.4233474 10.7522432,16.4039197 C10.7522432,17.1736889 10.2692211,17.8260721 9.59559603,18.0725212 L9.59559603,18.0725212 Z M12.8337233,10.4756214 L5.16627666,10.4756214 L5.16627666,6.25710188 C5.16627666,4.11342529 6.88624771,2.36922972 9.00015151,2.36922972 C11.1137523,2.36922972 12.8337233,4.11342529 12.8337233,6.25710188 L12.8337233,10.4756214 L12.8337233,10.4756214 Z"
                , Attributes.fill "#FEC900"
                ]
                []
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
badge : Nri.Ui.Svg.V1.Svg
badge =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 25 25"
        ]
        [ Svg.path
            [ Attributes.d "M18.13 1.593l4.51 2.308a.2.2 0 0 1 .11.181v9.28c0 3.43-1.86 6.57-4.857 8.2l-6.296 3.414a.211.211 0 0 1-.196 0l-6.294-3.413a9.318 9.318 0 0 1-4.857-8.2v-9.28c0-.079.043-.149.113-.185L4.87 1.593A14.529 14.529 0 0 1 11.5 0c2.278 0 4.557.53 6.63 1.593zm-5.74 3.869a1 1 0 0 0-1.78 0L9.4 7.821a1 1 0 0 1-.743.533l-2.633.392a1 1 0 0 0-.548 1.708l1.867 1.804a1 1 0 0 1 .291.885l-.43 2.555a1 1 0 0 0 1.438 1.058l2.407-1.218a1 1 0 0 1 .903 0l2.408 1.218a1 1 0 0 0 1.437-1.058l-.43-2.555a1 1 0 0 1 .292-.885l1.866-1.804a1 1 0 0 0-.547-1.708l-2.633-.392a1 1 0 0 1-.743-.532l-1.21-2.361z"
            , Attributes.fillRule "evenodd"
            ]
            []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
gift : Nri.Ui.Svg.V1.Svg
gift =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 15 15"
        ]
        [ Svg.g
            [ Attributes.stroke "none", Attributes.strokeWidth "1", Attributes.fillRule "evenodd" ]
            [ Svg.path [ Attributes.d "M6.45,8.25 C6.57857143,8.25 6.70714286,8.36020408 6.74125364,8.4861516 L6.75,8.55 L6.75,14.7 C6.75,14.8285714 6.63979592,14.9571429 6.5138484,14.9912536 L6.45,15 L1.5,15 C1.0875,15 0.801041667,14.7479167 0.756163194,14.3592882 L0.75,14.25 L0.75,8.4 C0.75,8.34 0.798,8.28 0.8556,8.2584 L0.9,8.25 L6.45,8.25 Z M14.1,8.25 C14.16,8.25 14.22,8.298 14.2416,8.3556 L14.25,8.4 L14.25,14.25 C14.25,14.6625 13.9979167,14.9489583 13.6092882,14.9938368 L13.5,15 L8.55,15 C8.42142857,15 8.29285714,14.8897959 8.25874636,14.7638484 L8.25,14.7 L8.25,8.55 C8.25,8.42142857 8.36020408,8.29285714 8.4861516,8.25874636 L8.55,8.25 L14.1,8.25 Z M10.5,0 C11.775,0 12.75,0.975 12.75,2.25 C12.75,2.78333333 12.5722222,3.25740741 12.2693416,3.61954733 L12.15,3.75 L14.25,3.75 C14.6625,3.75 14.9489583,4.00208333 14.9938368,4.39071181 L15,4.5 L15,6.6 C15,6.66 14.952,6.72 14.8944,6.7416 L14.85,6.75 L8.55,6.75 C8.42142857,6.75 8.29285714,6.63979592 8.25874636,6.5138484 L8.25,6.45 L8.25,4.05 C8.25,3.92142857 8.13979592,3.79285714 8.0138484,3.75874636 L7.95,3.75 L7.05,3.75 C6.92142857,3.75 6.79285714,3.86020408 6.75874636,3.9861516 L6.75,4.05 L6.75,6.45 C6.75,6.57857143 6.63979592,6.70714286 6.5138484,6.74125364 L6.45,6.75 L0.15,6.75 C0.09,6.75 0.03,6.702 0.0084,6.6444 L0,6.6 L0,4.5 C0,4.0875 0.252083333,3.80104167 0.640711806,3.75616319 L0.75,3.75 L2.85,3.75 C2.475,3.375 2.25,2.85 2.25,2.25 C2.25,0.975 3.225,0 4.5,0 C5.25,0 6.6,0.675 7.5,1.575 C8.4,0.675 9.75,0 10.5,0 Z M4.5,1.5 C4.05,1.5 3.75,1.8 3.75,2.25 C3.75,2.7 4.05,3 4.5,3 C4.5,3 6.45,2.925 6.675,2.85 C6.3,2.4 4.95,1.5 4.5,1.5 Z M10.5,1.5 C10.05,1.5 8.775,2.325 8.325,2.85 C8.55,2.925 10.5,3 10.5,3 C10.95,3 11.25,2.7 11.25,2.25 C11.25,1.8 10.95,1.5 10.5,1.5 Z" ] [] ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
hat : Nri.Ui.Svg.V1.Svg
hat =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 20 16"
        ]
        [ Svg.path [ Attributes.d "M10,0.1602 C5.3602,0.1602 0.4398002,1.4602 0.4398002,3.9 C0.4398002,5.26016 1.97964,6.2602 4.1398,6.8796 L4.1398,13.8796 C4.142926,14.29444 4.39526,14.66554 4.77964,14.82022 C8.13504,16.17334 11.88424,16.17334 15.23984,14.82022 C15.62422,14.665532 15.87734,14.29444 15.87968,13.8796 L15.87968,6.86 C18.03988,6.23968 19.57968,5.23968 19.57968,3.8804 C19.56015,1.46 14.63988,0.16 10.00008,0.16 L10,0.1602 Z M10,6.4204 C4.8204,6.4204 1.6398,4.94072 1.6398,3.8806 C1.6398,2.82044 4.8202,1.3602 10,1.3602 C15.1798,1.3602 18.3602,2.83988 18.3602,3.9 C18.3602,4.96012 15.1798,6.4204 10,6.4204 Z" ] []
        , Svg.path [ Attributes.d "M13.5398,2.3398 C12.38356,2.0437 11.1938,1.9023 10,1.92026 C8.80624,1.90229 7.6164,2.0437 6.4602,2.3398 C5.23988,2.67964 4.62036,3.19996 4.62036,3.87964 C4.62036,4.55932 5.24068,5.07964 6.4602,5.41948 L6.4602,5.42026 C7.61644,5.71636 8.8062,5.85776 10,5.8398 C11.19376,5.85777 12.3836,5.71636 13.5398,5.42026 C14.76012,5.08042 15.37964,4.5601 15.37964,3.88042 C15.37964,3.19996 14.7601,2.69996 13.5398,2.3398 Z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
keychain : Nri.Ui.Svg.V1.Svg
keychain =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 89 97"
        ]
        [ Svg.path [ Attributes.d "M17.4,58.6v5l3.2,3.2c1.2,1.2,1.2,3.1,0,4.3l-2.7,2.7l2.7,2.7c1.2,1.2,1.2,3.1,0,4.3L17.4,84v2.3 l5,5l5-5V58.6c0-1,0.6-1.9,1.6-2.3c1-0.4,1.9-0.9,2.7-1.4c0.5-0.4,1.1-0.7,1.7-0.7c1.1,0,2.1,0.7,2.4,1.8c0.3,1.1-0.1,2.2-1,2.8 c-0.8,0.5-1.6,1-2.5,1.4v26.6c0,1-0.4,1.9-1.1,2.6L24.7,96h0c-1.3,1.3-3.4,1.3-4.8,0l-6.5-6.5c-0.7-0.7-1.1-1.6-1.1-2.6v-3.2 c0-1.1,0.4-2.1,1.2-2.8l2.1-2.1L13.9,77c-0.8-0.8-1.3-2-1.3-3.2c0-1.2,0.5-2.3,1.3-3.2l1.7-1.7l-2.1-2.1c-0.8-0.8-1.2-1.8-1.2-2.8 v-3.8C5.6,56.9,1,50.2,0.1,42.7c-0.8-7.5,2.3-15,8.2-19.8c1.1-0.8,2.6-0.7,3.5,0.4c0.9,1.1,0.7,2.6-0.3,3.5c-4.8,3.8-7.1,9.9-6.2,16 c0.9,6.1,4.9,11.2,10.6,13.5C16.7,56.7,17.4,57.6,17.4,58.6L17.4,58.6z M74.7,72.2c-1.1,0-2.1-0.4-2.8-1.2l-2.6-2.6 c-0.8-0.8-1.2-1.9-1.2-3v-3.8h-3.1c-2.6,0-4.8-2.1-4.8-4.8v-3.2h-3.7c-1.1,0-2.2-0.4-3-1.2l-3.3-3.3c-7.3,2.5-15.3,1.6-21.7-2.5 c-6.5-4.1-10.8-10.9-11.6-18.6c-0.8-7.6,1.8-15.2,7.2-20.7C29.4,2,37-0.7,44.6,0.2C52.2,1,59.1,5.3,63.2,11.8 c4.1,6.5,5,14.5,2.5,21.7l21.8,21.8c0.7,0.7,1.2,1.8,1.2,2.8v10.5c0,1.9-1.6,3.5-3.5,3.5L74.7,72.2z M73,59.7V65l2.1,2.1h8.6l0-8.6 L61,35.9c-0.7-0.7-0.9-1.8-0.5-2.7c2.5-5.8,2.1-12.4-1.1-17.9c-3.1-5.5-8.6-9.2-14.9-10C38.3,4.4,32,6.5,27.5,11 c-4.5,4.5-6.6,10.7-5.8,17c0.8,6.3,4.5,11.8,10,14.9c5.5,3.1,12.1,3.5,17.9,1.1c0.9-0.4,2-0.2,2.7,0.5l4.2,4.2h5.3v0 c0.8,0,1.6,0.3,2.2,0.9c0.6,0.6,0.9,1.4,0.9,2.2v4.8h4.8C71.6,56.6,73,58,73,59.7L73,59.7z M42.8,15.2c2.6,2.6,3,6.8,1,9.9 c-2.1,3.1-6,4.3-9.5,2.9c-3.4-1.4-5.4-5.1-4.7-8.7c0.7-3.7,3.9-6.3,7.7-6.3C39.3,12.9,41.3,13.7,42.8,15.2z M39.2,18.7L39.2,18.7 c-1.1-1.1-2.9-1.1-4,0c-1.1,1.1-1.1,2.9,0,4c1.1,1.1,2.9,1.1,4,0c0.5-0.5,0.8-1.2,0.8-2C40.1,19.9,39.8,19.2,39.2,18.7L39.2,18.7z" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
sprout : Nri.Ui.Svg.V1.Svg
sprout =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 100 83"
        ]
        [ Svg.g [ Attributes.fillRule "nonzero" ]
            [ Svg.path
                [ Attributes.d "M66.3361328,23.0056641 L66.3361328,22.9205078 C66.3361328,21.8013672 65.146875,21.0789062 64.1560547,21.5994141 C61.0353516,23.2384766 57.9806641,25.1339844 55.1259766,27.3220703 C52.7337891,29.1554687 50.7003906,30.9380859 49.0453125,32.4488281 L49.0351563,29.2617187 C49.0351563,29.1556641 49.0974609,18.5953125 54.4810547,13.2119141 C55.09375,12.5990234 55.09375,11.6056641 54.4810547,10.9927734 C53.8681641,10.3802734 52.8748047,10.3802734 52.2619141,10.9927734 C47.7990234,15.4558594 46.4654297,22.5322266 46.0667969,26.4457031 C44.9107422,25.1599609 43.5933594,23.6900391 42.30625,22.4621094 C37.3503906,17.7333984 31.8285156,14.0056641 26.4798828,11.1158203 C25.4898438,10.5808594 24.2878906,11.3042969 24.2878906,12.4294922 L24.2878906,12.4294922 C24.2878906,12.9541016 24.5646484,13.4380859 25.0142578,13.7083984 C29.8099609,16.5931641 34.9601563,20.1953125 40.0970703,24.690625 C42.3849609,26.6927734 44.6691406,29.5775391 45.9025391,31.0087891 L45.9181641,35.8501953 C45.8878906,36.0291016 45.8878906,36.2123047 45.9199219,36.3910156 L46.0505859,69.3267578 C46.0533203,70.1916016 46.7552734,70.890625 47.6195312,70.890625 C47.6210938,70.890625 47.6230469,70.890625 47.6246094,70.890625 C48.4912109,70.8876953 49.1914062,70.1832031 49.1886719,69.3164062 L49.0591797,36.7457031 C50.8654297,34.9878906 53.5615234,32.4410156 57.0529297,29.7988281 C59.7716797,27.7412109 62.6439453,25.9228516 65.5595703,24.3132812 C66.0369141,24.0498047 66.3361328,23.5507813 66.3361328,23.0056641 Z"
                , Attributes.fill "#4D984E"
                ]
                []
            , Svg.path
                [ Attributes.d "M0,2.36015625 C7.72929687,8.24726563 14.3525391,16.0335937 22.5138672,21.2082031 C27.9757812,24.6710938 35.0310547,25.8072266 41.2017578,23.5763672 C43.83125,16.1564453 39.0654297,8.47226563 32.8615234,4.58789063 C23.5689453,-1.23027344 10.1871094,-0.90546875 0,2.36015625 Z"
                , Attributes.fill "#9CDD05"
                ]
                []
            , Svg.path
                [ Attributes.d "M100,12.1023437 C91.5154297,17.0859375 83.9130859,24.1132812 75.0804688,28.328125 C69.1693359,31.1488281 61.9376953,31.4369141 56.0029297,28.4466797 C54.2574219,20.6675781 59.9796875,13.5181641 66.6880859,10.3636719 C76.7361328,5.63828125 90.1523438,7.58515625 100,12.1023437 Z"
                , Attributes.fill "#C3EA21"
                ]
                []
            , Svg.path
                [ Attributes.d "M32.8615234,4.58789062 C23.5689453,-1.23027344 10.1871094,-0.90546875 0,2.36015625 C15.9494141,5.49433594 29.9521484,12.4251953 41.2017578,23.5761719 C43.83125,16.15625 39.0654297,8.47226563 32.8615234,4.58789062 Z"
                , Attributes.fill "#C3EA21"
                ]
                []
            , Svg.path
                [ Attributes.d "M56.1472656,28.5162109 C62.0546875,31.4300781 69.2167969,31.1259766 75.0804687,28.3279297 C83.9130859,24.1130859 91.5154297,17.0857422 100,12.1021484 C83.6082031,13.3207031 68.7960937,18.6943359 56.1472656,28.5162109 Z"
                , Attributes.fill "#9CDD05"
                ]
                []
            , Svg.path
                [ Attributes.d "M93.3470703,82.7828125 C93.3470703,78.7234375 89.3367188,74.2273438 81.6316406,73.76875 C79.3263672,67.3861328 73.19375,62.2677734 64.6273438,63.0894531 C57.7798828,45.5003906 20.8574219,48.8785156 15.4505859,73.4015625 C15.0931641,73.3667969 14.73125,73.3470703 14.3648438,73.3462891 C8.75488281,73.3355469 5.21347656,77.4210938 4.33027344,82.7828125 L93.3470703,82.7828125 Z"
                , Attributes.fill "#BA7D60"
                ]
                []
            , Svg.path
                [ Attributes.d "M55.9439453,65.7667969 C63.8917969,64.9451172 69.5816406,70.0632813 71.7205078,76.4460938 C77.3070313,76.8042969 80.8001953,79.6285156 82.0601563,82.7828125 L93.3470703,82.7828125 C93.3470703,78.7234375 89.3367188,74.2273438 81.6316406,73.76875 C79.3263672,67.3861328 73.19375,62.2677734 64.6275391,63.0894531 C61.984375,56.3 54.8591797,52.6378906 46.7962891,52.1068359 C50.6914063,53.4824219 55.0353516,57.228125 55.9439453,65.7667969 Z"
                , Attributes.fill "#A56A58"
                ]
                []
            ]
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
sapling : Nri.Ui.Svg.V1.Svg
sapling =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.viewBox "0 0 100 191"
        ]
        [ Svg.polygon [ Attributes.fill "#D97F4A", Attributes.points "44.4444444 116.260127 55.5555556 116.260127 55.5555556 182.186053 44.4444444 182.186053" ] []
        , Svg.polygon [ Attributes.fill "#D55F05", Attributes.points "50 116.260127 55.5555556 116.260127 55.5555556 182.186053 50 182.186053" ] []
        , Svg.path [ Attributes.d "M87.7777778,57.7777778 C88.4447337,55.2213541 88.8888889,52.6663774 88.8888889,50 C88.8888889,41.3324652 84.6672452,33.1105326 77.7777778,27.8891781 L77.7777778,27.7777778 C77.7777778,12.445023 65.3327548,0 50,0 C34.6672452,0 22.2222222,12.445023 22.2222222,27.7777778 L22.2222222,27.8891781 C15.3327548,33.1105326 11.1111111,41.3324652 11.1111111,50 C11.1111111,52.6663774 11.5552663,55.2213541 12.2222222,57.7777778 C4.33304407,64.8885996 0,73.7774885 0,83.3333333 C0,104.777199 22.445023,122.222222 50,122.222222 C77.554977,122.222222 100,104.777199 100,83.3333333 C100,73.7774885 95.6669559,64.8885996 87.7777778,57.7777778 Z", Attributes.fill "#C3EA21" ] []
        , Svg.path [ Attributes.d "M100,83.3333333 C100,104.777199 77.554977,122.222222 50,122.222222 L50,0 C65.3327548,0 77.7777778,12.445023 77.7777778,27.7777778 L77.7777778,27.8891781 C84.6672452,33.1105326 88.8888889,41.3324652 88.8888889,50 C88.8888889,52.6663774 88.4447337,55.2213541 87.7777778,57.7777778 C95.6669559,64.8885996 100,73.7774885 100,83.3333333 Z", Attributes.fill "#9CDD05" ] []
        , Svg.path [ Attributes.d "M27.7777778,100 C18.587963,100 11.1111111,92.5231481 11.1111111,83.3333333 C11.1111111,80.2633104 13.5966437,77.7777778 16.6666667,77.7777778 C19.7366896,77.7777778 22.2222222,80.2633104 22.2222222,83.3333333 C22.2222222,86.3990163 24.7120948,88.8888889 27.7777778,88.8888889 C30.8434607,88.8888889 33.3333333,86.3990163 33.3333333,83.3333333 C33.3333333,80.2633104 35.8188659,77.7777778 38.8888889,77.7777778 C41.9589119,77.7777778 44.4444444,80.2633104 44.4444444,83.3333333 C44.4444444,92.5231481 36.9675926,100 27.7777778,100 Z", Attributes.fill "#9CDD05" ] []
        , Svg.path [ Attributes.d "M72.2222222,100 C63.0324074,100 55.5555556,92.5231481 55.5555556,83.3333333 C55.5555556,80.2633104 58.0410881,77.7777778 61.1111111,77.7777778 C64.1811341,77.7777778 66.6666667,80.2633104 66.6666667,83.3333333 C66.6666667,86.3990163 69.1565393,88.8888889 72.2222222,88.8888889 C75.2879052,88.8888889 77.7777778,86.3990163 77.7777778,83.3333333 C77.7777778,80.2633104 80.2633104,77.7777778 83.3333333,77.7777778 C86.4033563,77.7777778 88.8888889,80.2633104 88.8888889,83.3333333 C88.8888889,92.5231481 81.412037,100 72.2222222,100 Z", Attributes.fill "#66BB00" ] []
        , Svg.path [ Attributes.d "M66.6666667,50 C66.6666667,59.2216437 59.2230904,66.6666667 50,66.6666667 C40.7769096,66.6666667 33.3333333,59.2216437 33.3333333,50 C33.3333333,46.8880207 35.7769096,44.4444444 38.8888889,44.4444444 C42.0008681,44.4444444 44.4444444,46.8880207 44.4444444,50 C44.4444444,53.1105326 46.8880207,55.5555556 50,55.5555556 C53.1119793,55.5555556 55.5555556,53.1105326 55.5555556,50 C55.5555556,46.8880207 57.9991319,44.4444444 61.1111111,44.4444444 C64.2230904,44.4444444 66.6666667,46.8880207 66.6666667,50 Z", Attributes.fill "#9CDD05" ] []
        , Svg.path [ Attributes.d "M66.6666667,50 C66.6666667,59.2216437 59.2230904,66.6666667 50,66.6666667 L50,55.5555556 C53.1119793,55.5555556 55.5555556,53.1105326 55.5555556,50 C55.5555556,46.8880207 57.9991319,44.4444444 61.1111111,44.4444444 C64.2230904,44.4444444 66.6666667,46.8880207 66.6666667,50 Z", Attributes.fill "#66BB00" ] []
        , Svg.path [ Attributes.d "M100,184.074074 C100,187.186053 97.5564237,189.62963 94.4444444,189.62963 L5.55555556,189.62963 C2.4435763,189.62963 0,187.186053 0,184.074074 C0,180.962095 2.4435763,178.518519 5.55555556,178.518519 L94.4444444,178.518519 C97.5564237,178.518519 100,180.962095 100,184.074074 Z", Attributes.fill "#C3EA21" ] []
        , Svg.path [ Attributes.d "M100,184.074074 C100,187.186053 97.5564237,189.62963 94.4444444,189.62963 L50,189.62963 L50,178.518519 L94.4444444,178.518519 C97.5564237,178.518519 100,180.962095 100,184.074074 Z", Attributes.fill "#9CDD05" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml


{-| -}
tree : Nri.Ui.Svg.V1.Svg
tree =
    Svg.svg
        [ Attributes.width "100%"
        , Attributes.height "100%"
        , Attributes.fill "currentcolor"
        , Attributes.viewBox "0 0 100 100"
        ]
        [ Svg.path [ Attributes.d "M44.2554458,76.2957186 C36.1962642,76.2957186 29.6386609,69.7388768 29.6386609,61.6796952 L29.6386609,55.8332857 C29.6386609,54.2174899 30.9468311,52.9100811 32.5618657,52.9100811 C34.1776615,52.9100811 35.4858318,54.2174899 35.4858318,55.8332857 L35.4858318,61.6796952 C35.4858318,66.5156609 39.4194799,70.4493092 44.2554458,70.4493092 C45.8712416,70.4493092 47.1786506,71.7567179 47.1786506,73.3725139 C47.1786506,74.9883097 45.8712416,76.2957186 44.2554458,76.2957186 L44.2554458,76.2957186 Z", Attributes.fill "#D55F05" ] []
        , Svg.path [ Attributes.d "M61.7946739,70.4493092 L55.9482646,70.4493092 C54.3324686,70.4493092 53.0250599,69.1419004 53.0250599,67.5261044 C53.0250599,65.9103087 54.3324686,64.6028997 55.9482646,64.6028997 L61.7946739,64.6028997 C66.6298784,64.6028997 70.5642881,60.6692516 70.5642881,55.8332857 C70.5642881,54.2174899 71.8716969,52.9100811 73.4874928,52.9100811 C75.1032886,52.9100811 76.4106974,54.2174899 76.4106974,55.8332857 C76.4106974,63.8924673 69.8530942,70.4493092 61.7946739,70.4493092 L61.7946739,70.4493092 Z", Attributes.fill "#913F02" ] []
        , Svg.path [ Attributes.d "M58.8714693,55.8332857 L58.8714693,95.7256259 L41.3322411,95.7256259 L41.3322411,55.8332857 C41.3322411,54.1961693 42.6175679,52.9100811 44.2554458,52.9100811 L55.9482646,52.9100811 C57.585381,52.9100811 58.8714693,54.1961693 58.8714693,55.8332857 L58.8714693,55.8332857 Z", Attributes.fill "#D97F4A" ] []
        , Svg.path [ Attributes.d "M58.8714693,55.8332857 L58.8714693,95.7256259 L50.1018553,95.7256259 L50.1018553,52.9100811 L55.9482646,52.9100811 C57.585381,52.9100811 58.8714693,54.1961693 58.8714693,55.8332857 L58.8714693,55.8332857 Z", Attributes.fill "#D55F05" ] []
        , Svg.path [ Attributes.d "M99.9326344,40.1063075 L99.9326344,40.164939 C98.9975744,50.2206412 90.0916609,58.1716972 79.5090354,58.7564904 L44.2554458,58.7564904 L49.9259604,51.7412561 C49.984592,51.7412561 50.0432236,51.6826243 50.1018553,51.6239928 C55.246208,49.4020832 58.8714693,44.2569686 58.8714693,38.2940576 C58.8714693,32.2725149 55.246208,27.1274003 50.1018553,24.9054908 C48.2888439,24.0876939 46.3014607,23.6780341 44.2554458,23.6780341 L26.7154562,23.6780341 C25.0783398,23.6780341 23.7922517,22.391946 23.7922517,20.7548294 C23.7922517,9.47090917 32.9715254,0.097465538 44.2554458,0.097465538 L67.6410834,0.097465538 C78.5739756,0.097465538 87.5773547,8.94474751 88.1035161,19.7611378 C95.7621755,23.4442691 100.633929,31.5118267 99.9326344,40.1063075 L99.9326344,40.1063075 Z", Attributes.fill "#9CDD05" ] []
        , Svg.path [ Attributes.d "M99.9326344,40.1063075 L99.9326344,40.164939 C98.9975744,50.2206412 90.0916609,58.1716972 79.5090354,58.7564904 L50.1018553,58.7564904 L50.1018553,51.6239928 C55.246208,49.4020832 58.8714693,44.2569686 58.8714693,38.2940576 C58.8714693,32.2725149 55.246208,27.1274003 50.1018553,24.9054908 L50.1018553,0.097465538 L67.6410834,0.097465538 C78.5739756,0.097465538 87.5773547,8.94474751 88.1035161,19.7611378 C95.7621755,23.4442691 100.633929,31.5118267 99.9326344,40.1063075 L99.9326344,40.1063075 Z", Attributes.fill "#66BB00" ] []
        , Svg.path [ Attributes.d "M50.1018553,18.7080531 C48.2309737,18.1240213 46.3014607,17.8316247 44.2554458,17.8316247 L20.8690469,17.8316247 C15.1985323,17.8316247 9.93615468,20.0535344 6.07789013,24.1455642 C2.16099382,28.2383552 -0.0220819872,33.6751048 0.211682965,39.4050125 C0.796476291,50.045508 10.5795797,58.7564904 21.8048683,58.7564904 L44.2554458,58.7564904 C46.3014607,58.7564904 48.2309737,58.4640938 50.1018553,57.8793006 C58.5204412,55.3657558 64.7178786,47.5312018 64.7178786,38.2940576 C64.7178786,29.0569135 58.5204412,21.2223595 50.1018553,18.7080531 Z", Attributes.fill "#C3EA21" ] []
        , Svg.path [ Attributes.d "M64.7178786,38.2940576 C64.7178786,47.5312018 58.5204412,55.3657558 50.1018553,57.8793006 L50.1018553,18.7080531 C58.5204412,21.2223595 64.7178786,29.0569135 64.7178786,38.2940576 L64.7178786,38.2940576 Z", Attributes.fill "#9CDD05" ] []
        , Svg.path [ Attributes.d "M88.1035161,38.2940576 C88.1035161,39.9083306 86.7945844,41.2172622 85.1803114,41.2172622 C83.5660384,41.2172622 82.2571069,39.9083306 82.2571069,38.2940576 C82.2571069,36.6797847 83.5660384,35.3708529 85.1803114,35.3708529 C86.7945844,35.3708529 88.1035161,36.6797847 88.1035161,38.2940576 L88.1035161,38.2940576 Z", Attributes.fill "#CD0000" ] []
        , Svg.path [ Attributes.d "M76.4106974,20.7548294 C76.4106974,22.3691024 75.1017658,23.6780341 73.4874928,23.6780341 C71.8732199,23.6780341 70.5642881,22.3691024 70.5642881,20.7548294 C70.5642881,19.1405564 71.8732199,17.8316247 73.4874928,17.8316247 C75.1017658,17.8316247 76.4106974,19.1405564 76.4106974,20.7548294 L76.4106974,20.7548294 Z", Attributes.fill "#CD0000" ] []
        , Svg.path [ Attributes.d "M53.0250599,38.2940576 C53.0250599,39.931174 51.7389717,41.2172622 50.1018553,41.2172622 C48.4639774,41.2172622 47.1786506,39.931174 47.1786506,38.2940576 C47.1786506,36.6569411 48.4639774,35.3708529 50.1018553,35.3708529 C51.7389717,35.3708529 53.0250599,36.6569411 53.0250599,38.2940576 Z", Attributes.fill "#FF637B" ] []
        , Svg.path [ Attributes.d "M76.4106974,44.1404669 C76.4106974,45.7547399 75.1017658,47.0636717 73.4874928,47.0636717 C71.8732199,47.0636717 70.5642881,45.7547399 70.5642881,44.1404669 C70.5642881,42.5261939 71.8732199,41.2172622 73.4874928,41.2172622 C75.1017658,41.2172622 76.4106974,42.5261939 76.4106974,44.1404669 L76.4106974,44.1404669 Z", Attributes.fill "#CD0000" ] []
        , Svg.path [ Attributes.d "M41.3322411,44.1404669 C41.3322411,45.7547399 40.0233093,47.0636717 38.4090364,47.0636717 C36.794002,47.0636717 35.4858318,45.7547399 35.4858318,44.1404669 C35.4858318,42.5261939 36.794002,41.2172622 38.4090364,41.2172622 C40.0233093,41.2172622 41.3322411,42.5261939 41.3322411,44.1404669 Z", Attributes.fill "#FF637B" ] []
        , Svg.path [ Attributes.d "M23.7922517,44.1404669 C23.7922517,45.7547399 22.4840813,47.0636717 20.8690469,47.0636717 C19.2547739,47.0636717 17.9458422,45.7547399 17.9458422,44.1404669 C17.9458422,42.5261939 19.2547739,41.2172622 20.8690469,41.2172622 C22.4840813,41.2172622 23.7922517,42.5261939 23.7922517,44.1404669 Z", Attributes.fill "#FF637B" ] []
        , Svg.path [ Attributes.d "M64.7178786,14.9084201 C64.7178786,16.5226931 63.4089469,17.8316247 61.7946739,17.8316247 C60.1796395,17.8316247 58.8714693,16.5226931 58.8714693,14.9084201 C58.8714693,13.2941471 60.1796395,11.9852154 61.7946739,11.9852154 C63.4089469,11.9852154 64.7178786,13.2941471 64.7178786,14.9084201 L64.7178786,14.9084201 Z", Attributes.fill "#CD0000" ] []
        , Svg.path [ Attributes.d "M29.6386609,32.4476482 C29.6386609,34.0619211 28.3304908,35.3708529 26.7154562,35.3708529 C25.1011832,35.3708529 23.7922517,34.0619211 23.7922517,32.4476482 C23.7922517,30.8333752 25.1011832,29.5244436 26.7154562,29.5244436 C28.3304908,29.5244436 29.6386609,30.8333752 29.6386609,32.4476482 Z", Attributes.fill "#FF637B" ] []
        , Svg.path [ Attributes.d "M50.1018553,41.2172622 L50.1018553,35.3708529 C51.7389717,35.3708529 53.0250599,36.6569411 53.0250599,38.2940576 C53.0250599,39.931174 51.7389717,41.2172622 50.1018553,41.2172622 Z", Attributes.fill "#FF001E" ] []
        , Svg.path [ Attributes.d "M76.4106974,96.9530825 C76.4106974,98.5901989 75.1246092,99.8762872 73.4874928,99.8762872 L26.7154562,99.8762872 C25.0783398,99.8762872 23.7922517,98.5901989 23.7922517,96.9530825 C23.7922517,95.3159659 25.0783398,94.0298778 26.7154562,94.0298778 L73.4874928,94.0298778 C75.1246092,94.0298778 76.4106974,95.3159659 76.4106974,96.9530825 L76.4106974,96.9530825 Z", Attributes.fill "#C3EA21" ] []
        , Svg.path [ Attributes.d "M76.4106974,96.9530825 C76.4106974,98.5901989 75.1246092,99.8762872 73.4874928,99.8762872 L50.1018553,99.8762872 L50.1018553,94.0298778 L73.4874928,94.0298778 C75.1246092,94.0298778 76.4106974,95.3159659 76.4106974,96.9530825 L76.4106974,96.9530825 Z", Attributes.fill "#9CDD05" ] []
        ]
        |> Nri.Ui.Svg.V1.fromHtml
