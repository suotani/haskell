-- inputs
-- n: data count
-- a_i: number
-- n
-- a_1
-- a_2
-- ..
-- a_n

-- output
-- sorted inputs [a_1 .. a_n]

import Data.List

main = do
    a <- getContents
    mapM_ putStrLn $ sortInputs . map (\n -> read n :: Int) . lines $ a

sortInputs :: [Int] -> [String]
sortInputs (x:xs) = map show $ sort xs