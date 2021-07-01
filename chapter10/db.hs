import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase = 
  [ DbDate (UTCTime
            (fromGregorian 1911 5 1)
            (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello, World!"
    , DbDate (UTCTime
              (fromGregorian 1921 5 1)
              (secondsToDiffTime 34123))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr getDate []
  where
    getDate (DbDate date) xs = xs ++ [date]
    getDate _ xs = xs

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr getNumber []
  where
    getNumber (DbNumber date) xs = xs ++ [date]
    getNumber _ xs = xs

minDate = UTCTime (fromGregorian 0 0 0) 0
getMaxDate :: [UTCTime] -> UTCTime
mostRecent :: [DatabaseItem] -> UTCTime

getMaxDate = foldr (\a b -> if (a > b) then a else b) minDate
mostRecent = getMaxDate . filterDbDate

sumDb = sum . filterDbNumber
avg :: [Integer] -> Double

avg xs = (fromIntegral (sum xs)) / (fromIntegral (length xs))
avgDb = avg . filterDbNumber

avDb2 items =
    fromIntegral
  . (flip div) (length items)
  . fromIntegral
  . sumDb
  $ items;
