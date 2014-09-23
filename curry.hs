repeatn :: (Num i, Ord i) => a -> i -> [a] 
repeatn x n
  | n <= 0 = []
  | otherwise = x : repeatn x (n-1)

repeatn1 :: [a] -> Int -> [a] 
repeatn1 x n
  | n <= 0 = []
  | otherwise = x ++ repeatn1 x (n-1)

repeat_tom :: Int -> String
repeat_tom = repeatn1 "tom"

-- write repeat_tom in terms of repeatn1
-- repeat_tom 3 = "tomtomtom"
-- repeat_tom 2 = "tomtom"
-- repeat_tom 14 = "tomtomtomtotmotmtomtotmto..."
