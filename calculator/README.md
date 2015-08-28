## Calculator
Basic calculator app takes input from the command line and performs elementary operations. Usage: `calc 1 + 1     # => 2.0`

There must be a space between numbers and operators. The calculator does not accept expressions
that use parentheses or exponents.

## Features and Techniques
The calculator has a command line interface. It formulates a string from `ARGV`, which it then
parses and processes as a mathematical expression. It illustrates the following techniques:
  * Modular design
  * Public and private methods
  * Metaprogramming (`#send` method, used to process operators)
  * Recursive algorithms in `#multiply!` and `#add!` methods
  * Automated testing with RSpec
  * Command line interface