# Haskell Math Project
**Purpose: To solve interesting math problems and learn [Haskell](https://www.haskell.org) in the process**
## Section 1: Probabilities
**Objectives:**
* Represent probability variables as a number between 0-100, representing the percent chance of said thing happening, eg. coinHeads = 50
* And logic for probabilities, representing the probability of a AND b happening, eg. `and_prob 50 50` = 25. This means there is a 25% chance of flipping a coin, for example, and getting heads AND heads
* Or logic for probabilities, representing the probability of a OR b happening, eg. `or_prob 50 50` = 75. This means there is a 75% chance of flipping a coin and getting heads the first OR the second time, because it's the same probability each time. Notice that AND's will result in a lower probability than the lowest input, and OR's will result in a higher probability than the highest input
* Get odds of x getting 'and'ed n times, eg. `and_of_x_n_times_prob 50 2` = 25, `and_of_x_n_times_prob 50 4` = 6.25
* Get odds of x getting 'or'ed n times, eg. `or_of_x_n_times_prob 50 2` = 75, `or_of_x_n_times_prob 50 4` = 93.75
* Get probability based on m combinations n times, eg. `combination_prob 3 4` = 81. This one is a hair more generic, so I'll give a couple of examples:
  * example 1: Let's say I want to find out how many possibilities there are in 8 bits. For my m, I would put 2, because each digit has 2 possible combinations (0 or 1), and for n, I would put the number of bits, which we said was 8. So we would want to end up with `combination_prob 2 8` = .39, because there are 8 characters, each with 2 possibilities, giving a total of 256 possible outcomes (or 1/256) which equals .39%
  * example 2: Now let's say we want to find out how many combinations there are in a 12-character password which allows only letter characters that can be uppercase or lowercase. Our m would be 52 (because there are 26 letters in the alphabet, times 2 since they can be upper or lowercase), and our n would be 12 (because it is a 12-character password). So our function would be `combination_prob 52 12` = 3.91 * 10^20, meaning a VERY small chance of guessing the correct answer (about 2.56 * 10^-21)
  * (side note): In example 2, it's also true that one might have a password UP TO 12 characters, which would include if it was 1, 2, 3..11 characters long. I recognize this case exists, but we will not deal with this case yet, and keep it simple with a fixed number of possibilities
