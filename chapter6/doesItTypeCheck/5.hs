data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

{-|
1. No
2. Yes
3. Yes, implements Eq
4. No, no Ord
-}
