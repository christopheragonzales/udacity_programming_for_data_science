
# String Methods

## Common String Methods

### `str.capitalize()`

Return a copy of the string with its first character capitalized and the rest lowercased.

### `str.casefold()`

Return a casefolded copy of the string. Casefolded strings may be used for caseless matching.

### `str.center(width[, fillchar])`

Return a centered string of length `width`. Padding is done using the specified `fillchar` (default is a space).

### `str.count(sub[, start[, end]])`

Return the number of non-overlapping occurrences of substring `sub` in the range `[start, end]`.

### `str.encode(encoding="utf-8", errors="strict")`

Return an encoded version of the string as a bytes object.

### `str.endswith(suffix[, start[, end]])`

Return `True` if the string ends with the specified `suffix`, otherwise return `False`.

### `str.find(sub[, start[, end]])`

Return the lowest index in the string where substring `sub` is found within the slice `[start:end]`. Return `-1` if `sub` is not found.

### `str.format(*args, **kwargs)`

Perform a string formatting operation.

### `str.index(sub[, start[, end]])`

Like `find()`, but raise `ValueError` when the substring is not found.

### `str.isalnum()`

Return `True` if all characters in the string are alphanumeric and there is at least one character, `False` otherwise.

### `str.isalpha()`

Return `True` if all characters in the string are alphabetic and there is at least one character, `False` otherwise.

### `str.isdecimal()`

Return `True` if all characters in the string are decimal characters and there is at least one character, `False` otherwise.

### `str.isdigit()`

Return `True` if all characters in the string are digits and there is at least one character, `False` otherwise.

### `str.islower()`

Return `True` if all cased characters in the string are lowercase and there is at least one cased character, `False` otherwise.

### `str.isnumeric()`

Return `True` if all characters in the string are numeric characters, and there is at least one character, `False` otherwise.

### `str.isspace()`

Return `True` if there are only whitespace characters in the string and there is at least one character, `False` otherwise.

### `str.istitle()`

Return `True` if the string is a titlecased string and there is at least one character, `False` otherwise.

### `str.isupper()`

Return `True` if all cased characters in the string are uppercase and there is at least one cased character, `False` otherwise.

### `str.join(iterable)`

Concatenate any number of strings in the iterable.

### `str.ljust(width[, fillchar])`

Return the string left-justified in a string of length `width`.

### `str.lower()`

Return a copy of the string with all the cased characters converted to lowercase.

### `str.lstrip([chars])`

Return a copy of the string with leading whitespace removed.

### `str.partition(sep)`

Split the string at the first occurrence of `sep`, and return a 3-tuple containing the part before the separator, the separator itself, and the part after the separator.

### `str.replace(old, new[, count])`

Return a copy of the string with all occurrences of substring `old` replaced by `new`.

### `str.rfind(sub[, start[, end]])`

Return the highest index in the string where substring `sub` is found within the slice `[start:end]`. Return `-1` if `sub` is not found.

### `str.rindex(sub[, start[, end]])`

Like `rfind()` but raise `ValueError` when the substring is not found.

### `str.rjust(width[, fillchar])`

Return the string right-justified in a string of length `width`.

### `str.rsplit(sep=None, maxsplit=-1)`

Return a list of the words in the string, using `sep` as the delimiter string.

### `str.rstrip([chars])`

Return a copy of the string with trailing whitespace removed.

### `str.split(sep=None, maxsplit=-1)`

Return a list of the words in the string, using `sep` as the delimiter string.

### `str.splitlines([keepends])`

Return a list of the lines in the string, breaking at line boundaries.

### `str.startswith(prefix[, start[, end]])`

Return `True` if the string starts with the specified `prefix`, otherwise return `False`.

### `str.strip([chars])`

Return a copy of the string with the leading and trailing characters removed.

### `str.swapcase()`

Return a copy of the string with uppercase characters converted to lowercase and vice versa.

### `str.title()`

Return a titlecased version of the string where words start with an uppercase character and the remaining characters are lowercase.

### `str.upper()`

Return a copy of the string with all the cased characters converted to uppercase.

### `str.zfill(width)`

Return a copy of the string left filled with ASCII '0' digits to make a string of length `width`.

For more detailed information, please refer to the full [String Methods document](https://docs.python.org/3/library/stdtypes.html#string-methods).
