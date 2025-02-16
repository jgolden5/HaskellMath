module Main where
import Probability

main :: IO ()
main = do
  putStrLn "Hello Haskell!"
  print (or_prob 50 50)
  print (and_prob 10 20)