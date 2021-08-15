module Picshare exposing (main)

import Html exposing (..)
import Html.Attributes exposing (class, src)


main : Html msg
main =
    view initialModel


view : { url : String, caption : String } -> Html msg
view model =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picshare" ] ]
        , div [ class "content-flow" ]
            [ viewDetailedPhoto model ]
        ]


baseUrl : String
baseUrl =
    "https://programming-elm.com/"


viewDetailedPhoto : { url : String, caption : String } -> Html msg
viewDetailedPhoto model =
    div [ class "detailed-photo" ]
        [ img [ src model.url ] []
        , div [ class "photo-info" ]
            [ h2 [ class "caption" ] [ text model.caption ] ]
        ]


initialModel : { url : String, caption : String }
initialModel =
    { url = baseUrl ++ "1.jpg", caption = "Surfing" }
