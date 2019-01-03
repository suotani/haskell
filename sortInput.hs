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
    a <- getLine
    s <- getContents
    mapM_ putStrLn $ map show $ sort . map (\n -> read n :: Int) . lines $ s