# Haskell Math Project
**Purpose: To solve interesting math problems and learn [Haskell](https://www.haskell.org) in the process**
## Section 1: Probabilities
**Objective:**
* Represent probability variables as a number between 0-100, representing the percent chance of said thing happening, eg. coinHeads = 50

**Functions:**
* And logic for probabilities, representing the probability of a AND b happening, eg. `and_prob 50 50` = 25. This means there is a 25% chance of flipping a coin, for example, and getting heads AND heads
* Or logic for probabilities, representing the probability of a OR b happening, eg. `or_prob 50 50` = 75. This means there is a 75% chance of flipping a coin and getting heads the first OR the second time, because it's the same probability each time. Notice that AND's will result in a lower probability than the lowest input, and OR's will result in a higher probability than the highest input
* Get odds of x getting 'and'ed n times, eg. `and_of_x_n_times_prob 50 2` = 25, `and_of_x_n_times_prob 50 4` = 6.25
* Get odds of x getting 'or'ed n times, eg. `or_of_x_n_times_prob 50 2` = 75, `or_of_x_n_times_prob 50 4` = 93.75
* Get number of possible combinations with m possible states n times. To do `possible_combinations m n`:
  * example 1: Let's say I want to find out how many possibilities there are in 8 bits. For my m, I would put 2, because each digit has 2 possible combinations (0 or 1), and for n, I would put the number of bits, which we said was 8. So we would want to end up with `possible_combinations 2 8` = 256, meaning there are 256 different possible arrangements for 8 2-bit numbers (aka. 1 byte)
  * example 2: Now let's say we want to find out how many combinations there are in a 12-character password which allows only letter characters that can be uppercase or lowercase. Our m would be 52 (because there are 26 letters in the alphabet, times 2 since they can be upper or lowercase), and our n would be 12 (because it is a 12-character password). So our function would be `possible_combinations 52 12` = 390,877,006,486,250,192,896 (that's over 390 pentillion
  * (side note): In example 2, it's also true that one might have a password UP TO 12 characters, which would include if it was 1, 2, 3..11 characters long. I recognize this case exists, but we will not deal with this case yet, and keep it simple with a fixed number of possibilities for now
## Section 2: Haskell-unique Features
**Objective:**
* Find and apply Haskell's `Maybe` data type to diverse practical use cases in order to increase understanding
* (Place other Haskell-unique features here)

**Functions:**
* Safe and unsafe division--the unsafe one "allowing" division by zero and the safe one not allowing this. In other words, `unsafe_division` returns `Int`, and `safe_division` returns `Maybe Int`. The unsafe division will crash if division by zero occurs, whereas safe division consciously handles this case
## Section 3: Finance
**Objective:**
* Do finance-related math stuff with haskell :D

**Functions:**
* `hourly_to_annual_income` - Given hourly wage, and assuming the person works 40 hours a week for 52 weeks a year, calculate their annual salary. eg. `hourly_to_annual_income 17.5` should return 36,400, because that is the product of 17.5, 40, and 52.
