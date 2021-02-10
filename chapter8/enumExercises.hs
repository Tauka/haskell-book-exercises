eftBool :: Bool -> Bool -> [Bool]
eftBool a b
  | b < a = []
  | a == True = [True]
  | otherwise = [a] ++ (eftBool (succ a) b)

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd a b
  | b < a = []
  | a == GT = [GT]
  | otherwise = [a] ++ (eftOrd (succ a) b)

eftInt :: Int -> Int -> [Int]
eftInt a b
  | b < a = []
  | otherwise = [a] ++ (eftInt (succ a) b)

eftChar :: Char -> Char -> [Char]
eftChar a b
  | b < a = []
  | otherwise = [a] ++ (eftChar (succ a) b)
