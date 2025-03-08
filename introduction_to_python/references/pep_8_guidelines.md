
# PEP 8 -- Style Guide for Python Code

## Introduction

This document gives coding conventions for the Python code comprising the standard library in the main Python distribution. Please see the companion informational PEP describing style guidelines for the C code in the C implementation of Python [PEP 7](https://peps.python.org/pep-0007/).

## Code Lay-out

### Indentation

Use 4 spaces per indentation level.

### Tabs or Spaces?

Spaces are the preferred indentation method.

### Maximum Line Length

Limit all lines to a maximum of 79 characters.

### Blank Lines

Surround top-level function and class definitions with two blank lines.

### Imports

- Imports should usually be on separate lines.
- Imports should be grouped in the following order:
  1. Standard library imports.
  2. Related third party imports.
  3. Local application/library specific imports.

## String Quotes

In Python, single-quoted strings and double-quoted strings are the same. PEP 8 does not make a recommendation for this.

## Whitespace in Expressions and Statements

Avoid extraneous whitespace in the following situations:

- Immediately inside parentheses, brackets or braces.
- Immediately before a comma, semicolon, or colon.
- Immediately before the open parenthesis that starts the argument list of a function call.

## When to Use Trailing Commas

Trailing commas are usually optional, except in the case of one-element tuples.

## Comments

Comments should be complete sentences. Use two spaces after a sentence-ending period.

### Block Comments

Block comments generally apply to some (or all) code that follows them, and are indented to the same level as that code.

### Inline Comments

Use inline comments sparingly. An inline comment is a comment on the same line as a statement.

## Naming Conventions

### Descriptive: Naming Styles

- b (single lowercase letter)
- B (single uppercase letter)
- lowercase
- lower_case_with_underscores
- UPPERCASE
- UPPER_CASE_WITH_UNDERSCORES
- CapitalizedWords (or CapWords, or CamelCase)

### Prescriptive: Naming Conventions

- Modules should have short, all-lowercase names.
- Class names should normally use the CapWords convention.
- Function names should be lowercase, with words separated by underscores as necessary to improve readability.

## Programming Recommendations

- Code should be written in a way that does not require closing resources explicitly.
- Use `is` or `is not` when comparing to `None`.

For more detailed guidelines, please refer to the full [PEP 8 document](https://peps.python.org/pep-0008/).
