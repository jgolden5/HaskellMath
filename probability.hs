module Probability where

multiply_test x y = x * y
put_percent_sign n = show n ++ "%"

and_prob :: Double -> Double -> Double
and_prob a b = a * b / 100.0

or_prob :: Double -> Double -> Double
or_prob a b = ((a + b) - (a * b) / 100)
-- 50 + 50 - (50 * 50) / 100
-- h h | h t | t h | t t

and_prob_formatted :: Double -> Double -> [Char]
and_prob_formatted a b = put_percent_sign (and_prob a b)

or_prob_formatted a b = put_percent_sign (or_prob a b)
--a = 50% b = 60%, result of a and b should be (a / 100) * (b / 100) * 100
