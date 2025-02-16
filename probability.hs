module Probability where

multiply_test x y = x * y
put_percent_sign n = show n ++ "%"

and_prob :: Double -> Double -> Double
and_prob a b = a * b / 100.0

or_prob :: Double -> Double -> Double
or_prob a b = ((a + b) - (a * b) / 100)

and_prob_formatted :: Double -> Double -> [Char]
and_prob_formatted a b = put_percent_sign (and_prob a b)

or_prob_formatted a b = put_percent_sign (or_prob a b)

and_of_x_y_times_prob :: Double -> Double -> Double
and_of_x_y_times_prob x y = recursive_and_of_x_y_times_prob x x y

recursive_and_of_x_y_times_prob :: Double -> Double -> Double -> Double
recursive_and_of_x_y_times_prob const_x var_x y = if y > 1
  then do 
  let next_y = y - 1
  recursive_and_of_x_y_times_prob const_x (and_prob const_x var_x) next_y
  else var_x
