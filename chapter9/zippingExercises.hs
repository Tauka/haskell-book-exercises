myZip :: [a] -> [b] -> [(a, b)]
myZip [] list2 = []
myZip list1 [] = []
myZip (a:xs1) (b:xs2) = (a, b) : myZip xs1 xs2

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f xs1 xs2 = map (uncurry f) (myZip xs1 xs2)

newZip :: [a] -> [b] -> [(a, b)]
newZip xs1 xs2 = myZipWith (\x y -> (x, y)) xs1 xs2
