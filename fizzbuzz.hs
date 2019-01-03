main = do
    a <- getLine
    let nums = [1..(read a :: Int)]
    mapM_ putStrLn $ map (\x -> fizzbuzz (x `mod` 3 == 0, x `mod` 5 == 0) x) nums

fizzbuzz :: (Bool, Bool) -> Int -> String
fizzbuzz (True, False) _ = "Fizz" 
fizzbuzz (False, True) _ = "Buzz"
fizzbuzz (True, True) _ =  "Fizz Buzz"
fizzbuzz _ n = show n
