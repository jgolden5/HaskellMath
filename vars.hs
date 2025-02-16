module Vars where
import Probability

--amex
getAmexInterviewIn1 = 65
getAmexInterviewIn3 = 75
getAmexInterviewIn6 = 80
passAmexInterview = 90
coinFlip = 50 :: Double
diceRoll = 16.67 :: Double
amexJobIn1 = and_prob getAmexInterviewIn1 passAmexInterview
amexJobIn3 = and_prob getAmexInterviewIn3 passAmexInterview
amexJobIn6 = and_prob getAmexInterviewIn6 passAmexInterview

--professions
becomeAFamousMusician = 1 :: Double
becomeATherapist = 65 :: Double
becomeAnEntrepeneur = 30 :: Double

--blood types
oPositive = 38 :: Double
aPositive = 28 :: Double
bPositive = 11 :: Double
oNegative = 7 :: Double
aNegative = 6 :: Double
abPositive = 5 :: Double
bNegative = 2 :: Double
abNegative = 1 :: Double

--birthday problem
randomBirthdayCoincidence = 0.274
