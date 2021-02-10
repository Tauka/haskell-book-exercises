myWords :: String -> [String]
myWords a
  | a == []   = []
  | otherwise = [(takeWhile (/= ' ') a)] ++ myWords (drop 1 . dropWhile (/= ' ') $ a)

split :: Char -> String -> [String]
split sep str
  | str == []   = []
  | otherwise = [(takeWhile (/= sep) str)] ++ split sep (drop 1 . dropWhile (/= sep) $ str)
