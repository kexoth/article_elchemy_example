module Hello exposing (..)

{-| Example module, It says hello if you ask it nicely
-}


{-| Prints "world!"

    hello == "world!"

-}
hello : String
hello =
    "world!"


{-| Returns the sum of every integer in the function

    Hello.sum [ 1, 2, 3, 4, 5 ] == 15
    Hello.sum [ 10 ] == 10
    Hello.sum [] == 0

-}
sum : List Int -> Int
sum list =
    case list of
        first :: rest ->
            first + (sum rest)

        [] ->
            0
