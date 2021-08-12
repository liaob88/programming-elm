module Main exposing (main)

import Html exposing (text)


main =
    text (bottlesOf "juice" 99)


bottlesOf : String -> Int -> String
bottlesOf contents amount =
    String.fromInt amount ++ " bottles of " ++ contents ++ " on the wall."
