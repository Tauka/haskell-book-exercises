{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where

a = (* 9) 6
b = head [(0, "doge"), (1, "kitteh")]
c = head [(0 :: Integer, "doge"), (1, "kitteh")]
d = if False then True else False
e = length [1, 2, 3, 4, 5]
f = (length [1, 2, 3, 4, 5]) > (length "TACOCAT")

sx = 6
sy = sx + 5
sw = sy * 10

tx = 5
ty = tx + 5
tz ty = ty * 10

fx = 5
fy = fx + 5
ff = 4 / fy

lx = "Julie"
ly = " <3 "
lz = "Haskell"
lf = lx ++ ly ++ lz

