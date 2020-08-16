module Pangram exposing (isPangram)
import String exposing (toLower)

alphabet : List String
alphabet = 
    [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"
    , "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v"
    , "w", "x", "y", "z" ]

isCharacterInSentance : String -> String -> Bool
isCharacterInSentance character sentence =
    String.contains character sentence

isPangram : String -> Bool
isPangram sentence =
    List.all (\n -> n == True) (List.map (\n -> isCharacterInSentance n (String.toLower sentence)) alphabet)
