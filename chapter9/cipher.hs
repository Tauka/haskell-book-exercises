module Cipher where

caesar :: (Num a, Eq a) => a -> String -> String
shiftChar :: (Num a, Eq a) => a -> Char -> Char
nextChar :: Char -> Char

nextChar 'z' = 'a'
nextChar ' ' = ' '
nextChar a = succ a

prevChar 'a' = 'z'
prevChar ' ' = ' '
prevChar a = pred a

shiftChar 0 a = a
shiftChar n a = shiftChar (n - 1) (nextChar a)

unshiftChar 0 a = a
unshiftChar n a = unshiftChar (n - 1) (prevChar a)

uncaesar shift s = map (unshiftChar shift) s
caesar shift s = map (shiftChar shift) s
