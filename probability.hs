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

--public
and_of_x_n_times_prob :: Double -> Double -> Double
and_of_x_n_times_prob x y = recursive_and_of_x_n_times_prob x x y

or_of_x_n_times_prob :: Double -> Double -> Double
or_of_x_n_times_prob x y = recursive_or_of_x_n_times_prob x x y

--private
recursive_and_of_x_n_times_prob :: Double -> Double -> Double -> Double
recursive_and_of_x_n_times_prob const_x var_x y = if y > 1
  then do 
  let next_y = y - 1
  recursive_and_of_x_n_times_prob const_x (and_prob const_x var_x) next_y
  else var_x

recursive_or_of_x_n_times_prob :: Double -> Double -> Double -> Double
recursive_or_of_x_n_times_prob const_x var_x y = if y > 1
  then do 
  let next_y = y - 1
  recursive_or_of_x_n_times_prob const_x (or_prob const_x var_x) next_y
  else var_x
