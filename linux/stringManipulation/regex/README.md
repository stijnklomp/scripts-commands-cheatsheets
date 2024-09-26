# Regex cheat sheet

## Quantifiers

| Symbol | Meaning |
|---|---|
| ? | Match zero or one of the preceding element |
| * | Match zero or more of the preceding element |
| + | Match one or more of the preceding element |
| {N} | Match exactly N of the preceding element |
| {N,M} | Match between N and M of the preceding element |

## Pattern Collections

| Symbol | Meaning |
|---|---|
| [abc] | Match any one of the characters a, b, or c |
| [^abc] | Match any character except a, b, or c |
| [A-Z] | Match any uppercase letter |
| [a-z] | Match any lowercase letter |
| [0-9] | Match any digit |
| \w | Match any word character (letter, digit, or underscore) |
| \W | Match any non-word character |
| \s | Match any whitespace character |
| \S | Match any non-whitespace character |
| \d | Match any digit |
| \D | Match any non-digit |

## Flags

| Flag | Meaning |
|---|---|
| g | Global match (find all matches, not just the first) |
| i | Case-insensitive match |
| m | Multiline match (allow ^ and $ to match at the beginning and end of lines, respectively) |

## Groups

| Symbol | Meaning |
|---|---|
| (...) | Capture group |
| (?:...) | Non-capture group |
| (?<name>...) | Named capture group |

## Lookahead and Lookbehind

| Symbol | Meaning |
|---|---|
| (?=...) | Positive lookahead |
| (?!...) | Negative lookahead |
| (?<=...) | Positive lookbehind |
| (?<!...) | Negative lookbehind |

## General Tokens

| Symbol | Meaning |
|---|---|
| . | Match any single character |
| \n | Match a newline character |
| \t | Match a tab character |
| ^ | Match the beginning of the line |
| $ | Match the end of the line |
| \ | Escape the next character |
