-- dividedBy 15 2 | 0
-- dividedBy 13 2 | 1
-- dividedBy 11 2 | 2
-- dividedBy 9 2  | 3
-- dividedBy 7 2  | 4
-- dividedBy 5 2  | 5
-- dividedBy 3 2  | 6
-- dividedBy 1 2  | 7
-- answer: (7, 1)

nSum :: (Eq a, Num a) => a -> a
nSum 0 = 0
nSum n = nSum (n - 1) + n

recProduct :: Integral a => a -> a -> a
recProduct a b = go a b 0 0
  where go num times count sum
         | count == times = sum
         | otherwise      = go num times (count + 1) (sum + num)

data DividedResult =
    Result Integer
  | DividedByZero deriving Show
dividedBy :: (Integral a) => a -> a -> (DividedResult, a)
dividedBy a b = go a b 0
  where go first second count
         | second == 0                                            = (DividedByZero, 0)
         | (abs first < abs second)                               = (Result count, first)
         | (first > 0 && second < 0) || (first < 0 && second > 0) = go (first + second) second (count - 1)
         | otherwise                                              = go (first - second) second (count + 1)

mc91 n
  | n > 100  = n - 10
  | n <= 100 = mc91 (mc91 (n + 11))
