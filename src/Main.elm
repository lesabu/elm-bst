module Main exposing (main)

import BST exposing (BST, create, insert, member)
import Html exposing (div, p, text)


main =
    div []
        [ p [] [ text ("is memebr: " ++ Debug.toString (member 78 myBST)) ]
        , p [] [ text ("my BST: " ++ Debug.toString myBST) ]
        ]


myBST : BST Int
myBST =
    create 56
        |> insert 2
        |> insert 87
        |> insert 35
        |> insert 92
        |> insert 732
