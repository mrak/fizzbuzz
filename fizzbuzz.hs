main :: IO ()
main = mapM_ (putStrLn . fizzbuzz) [1..15]

fizzbuzz :: Int -> String
fizzbuzz n = (def . fizz . buzz) ""
    where def s = if null s then show n else s
          fizz = test 3 "fizz"
          buzz = test 5 "buzz"
          test x s | n `mod` x == 0 = (s ++)
                   | otherwise = id
