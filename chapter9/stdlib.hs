myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny fn [] = False
myAny fn (x:xs) = fn x || myAny fn xs

myElem :: Eq a => a -> [a] -> Bool
myElemAny :: Eq a => a -> [a] -> Bool

myElem a [] = False
myElem a (x:xs)
  | a == x = True
  | otherwise = myElem a xs

myElemAny a xs = myAny (== a) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish [] = []
squish (xs:xss) = xs ++ squish xss

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap fn [] = []
squishMap fn (x:xs) = fn x ++ squishMap fn xs

squishAgain :: [[a]] -> [a]
squishAgain xss = squishMap id xss

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy comparator (x:xs)
  | length xs == 0       = x
  | comparator x b == GT = x
  | otherwise = b
  where b = myMaximumBy comparator xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy comparator (x:xs)
  | length xs == 0       = x
  | comparator x b == LT = x
  | otherwise = b
  where b = myMaximumBy comparator xs

myMaximum :: (Ord a) => [a] -> a
myMaximum xs = myMaximumBy compare xs

myMinimum :: (Ord a) => [a] -> a
myMinimum xs = myMinimumBy compare xs
