tensDigit :: Integral a => a -> a
tensDigit x = d
  where f = flip mod 10 . flip div 10
        d = f x

hundredsDigit x = d
  where f = flip mod 10 . flip div 100
        d = f x

-- 3
foldBoolCase :: a -> a -> Bool -> a
foldBoolGuard :: a -> a -> Bool -> a
foldBoolCase a b predicate = 
  case predicate of
    False -> a
    True  -> b

foldBoolGuard a b predicate
  | predicate = b
  | not predicate = a

-- 4
g :: (a -> b) -> (a, c) -> (b, c)
g aToB ac = (aToB (fst ac), snd ac)
