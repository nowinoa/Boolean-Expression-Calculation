# Boolean Expression Calculation

**Boolcalc** is a Boolean expression calculator implemented in C using Lex (.l) and Yacc (.y). Lex is used to define the lexical analyzer, which breaks down input into tokens (e.g., TRUE, FALSE, operators like &, |, !). Yacc is used to define the grammar and parsing rules, allowing the program to evaluate the logical expressions. This process is similar to compiling text, where Lex and Yacc work together to tokenize and parse the input. The program accepts both uppercase and lowercase forms of Boolean literals (TRUE, FALSE, 1, 0), and logical operators, and outputs the result as either TRUE or FALSE. For example, the input `TRUE & FALSE` would output `FALSE`. Lex files (.l) are used to specify how the input should be tokenized, while Yacc files (.y) are used to describe how these tokens should be interpreted according to the grammar.

## Installation

## Usage

## Credits

## License
