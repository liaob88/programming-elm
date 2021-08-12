module Main exposing (main)

import Html exposing (text)

main = text ( Debug.toString meaningOfLife )

greeting: String
greeting = "Hello, Static Elm!"

meaningOfLife : Int
meaningOfLife = 42

pi: Float
pi = 3.4

canChunk : Bool
canChunk = True