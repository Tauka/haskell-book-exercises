module Chapter3Exercises where

appendExclaim str = str ++ "!"
fourthChar str = [str !! 4]
dropNine str = drop 9 str

thirdLetter :: String -> Char
thirdLetter str = str !! 2

letterIndex :: Int -> Char
letterIndex i = "Curry is awesome!" !! i

rvrs :: String -> String
rvrs str = drop 9 str ++ take 4 (drop 5 str) ++ take 5 str

