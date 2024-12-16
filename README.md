# Boolean Expression Calculation

**Boolcalc** is a Boolean expression calculator implemented in C using Lex (.l) and Yacc (.y). Lex is used to define the lexical analyzer, which breaks down input into tokens (e.g., TRUE, FALSE, operators like &, |, !). Yacc is used to define the grammar and parsing rules, allowing the program to evaluate the logical expressions. This process is similar to compiling text, where Lex and Yacc work together to tokenize and parse the input. The program accepts both uppercase and lowercase forms of Boolean literals (TRUE, FALSE, 1, 0), and logical operators, and outputs the result as either TRUE or FALSE. For example, the input `TRUE & FALSE` would output `FALSE`. Lex files (.l) are used to specify how the input should be tokenized, while Yacc files (.y) are used to describe how these tokens should be interpreted according to the grammar.

## Requirements
Before installing the **Boolean Expression Calculator**, make sure you meet the following requirements:

**Operating System**:
   - Linux (Ubuntu, Debian, etc.), macOS, or Windows with **WSL** (Windows Subsystem for Linux) enabled.

**Software**:
   - **Flex**: A tool for generating lexical analyzers (scanners) from a Lex specification.
   - **Bison**: A tool for generating parsers from a Yacc specification.
   - **GCC**: A C compiler to compile the generated code.
   - **Math Library (`-lm`)**: This is needed for certain mathematical operations during compilation.

## Installation
To install the **Boolean Expression Calculator**, follow these steps:

1. Clone the repository from GitHub:
   ```bash
   git clone https://github.com/nowinoa/Boolean-Expression-Calculation.git

2. Navigate into the project directory:
   ``` cd Boolean-Expression-Calculation```
   
4. Ensure that you have Yacc and Lex installed. Otherwise, install them.

```bash
  sudo apt-get update
  sudo apt-get install flex bison gcc
```

## Usage

1. Generate the C Source files:
   ```bash
    lex boolcalc.l
    yacc -d boolcalc.y
    ```
2. Compile the code:
   ```bash
   gcc lex.yy.c y.tab.c -o boolcalc -lm
   ```
3. Run the programme on terminal:
   ```bash
     ./boolcalc
   ```
4. Input two boolean expressions and one operator (examples):

   ``` TRUE & FALSE ```
   ``` TRUE | FALSE ```
   ``` !TRUE ```
   
## Credits
This project was created by <a href="https://github.com/nowinoa">Ainhoa Prada</a> under the supervision of the <a href="https://www.gre.ac.uk/">University of Greenwich</a>. 

## License
This project is under MIT license
        
## Questions
For any questions or issues feel free to contact me at: apt.code14@gmail.com

To explore more about my projects visit my profile :point_right: <a href="https://github.com/nowinoa">:computer:</a>

© 2024 Ainhoa Prada. Confidential and Proprietary. All Rights Reserved.
