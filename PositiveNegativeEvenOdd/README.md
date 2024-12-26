# Check if a Number is Positive/Negative and Even/Odd

This Dart program checks if a given integer is positive or negative and whether it is even or odd.

## Description
The program uses the following steps:
1. **Input a number**: The number is declared as an integer in the code.
2. **Check positivity/negativity**: A conditional statement (`if-else`) is used to check if the number is positive (greater than 0) or negative.
3. **Check even/odd**: Within each condition, a ternary operator is used to determine if the number is even (divisible by 2) or odd.


### Key Points:
- **Condition to check positivity/negativity**: `if (number > 0)` checks if the number is positive. If not, it's considered negative.
- **Condition to check even/odd**: `number % 2 == 0` checks if the remainder of the number divided by 2 is zero (indicating it is even).
