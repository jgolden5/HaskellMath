module Maybe where 
unsafe_division :: Double -> Double -> Double
unsafe_division x y = x / y

safe_division :: Double -> Double -> Maybe Double
safe_division _ 0 = Nothing
safe_division x y = Just (x / y)
