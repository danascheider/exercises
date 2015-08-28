## PalindromeFinder
Command line app prompts user to enter a string, and then determines whether the string is a
palindrome. It then asks whether the user would like to test another string, and continues
until the user answers no.

## Features and Techniques
The palindrome finder has a command line interface. It takes no arguments, but will prompt for a string that the user should then enter. It illustrates the following techniques:
  * Modular design with separate classes for UI and business logic
  * Recursive algorithm in `PalindromeFinder#check_if_palindrome` method
  * Command line interface