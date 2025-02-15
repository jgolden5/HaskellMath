module Vars where
import Probability

getAmexInterviewIn1 = 65
getAmexInterviewIn3 = 75
getAmexInterviewIn6 = 80
passAmexInterview = 90
coinFlip = 50 :: Double
diceRoll = 16.67 :: Double
amexJobIn1 = and_prob getAmexInterviewIn1 passAmexInterview
amexJobIn3 = and_prob getAmexInterviewIn3 passAmexInterview
amexJobIn6 = and_prob getAmexInterviewIn6 passAmexInterview
