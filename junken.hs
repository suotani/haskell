import Control.Monad
import Control.Applicative
import Data.List

judge :: Int -> Int -> Int
judge s input = case s of 0 -> if input == 2 then 1 else 0
                          2 -> if input == 5 then 1 else 0
                          5 -> if input == 0 then 1 else 0

hand2Num :: Char -> Int
hand2Num c = case c of 'G' -> 0
                       'C' -> 2
                       'P' -> 5


-- この実装だと nが13を超えると、とてつもなく時間がかかる
main = do
  a <- getLine
  str <- getLine
  let [n, m] = map (\x -> read x :: Int) $ words a
      steps = filter (\ar -> (foldl1 (+) ar) == m) $ replicateM n [0,2,5]
      inputHands = ZipList (map hand2Num str)
      result = foldl1 max $ map (\step -> foldl1' (+) $ getZipList $ judge <$> ZipList step <*> inputHands) steps
  putStrLn $ show result